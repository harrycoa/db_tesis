select 	c.ccodinte as Codigo_Interno, 
		c.ffecemis as Fecha_Emision, 
        c.ctipdocu as Tipo_Documento, 
        cp.cnomdocu as Descripcion_Documento,
        c.cserdocu as Serie_Documento, 
        c.cnumdocu as Documento,
		c.crucclie as RUC, 
        c.cnomclie as Cliente, 
        c.cdirclie as Direccion,
		c.nvv_docu as Valor_Venta, 
        c.nigvdocu as IGV, 
        c.ntotdocu as Total, 
        c.ccodalma as Sucursal, 
        c.canudocu as Anulado,
        d.ncanvent as Cantidad,
        d.ccodprod as Codigo_Producto,
        d.Servicio as descripcion,
        d.ntotregi as Costo_Unitario,
        -- d.npreunit as Precio_Unitario,
        a.ccodalma as codigo_almacen,
        a.ctitalma as descripcion_almacen
        
from galaxia_corasur.gx_salidac c
inner join galaxia_corasur.gx_series s on c.cserdocu=s.cserdocu
inner join galaxia_corasur.gx_salidad d on c.ccodinte=d.ccodinte
inner join galaxia_corasur.gx_almacen a on d.ccodalma=a.ccodalma
inner join galaxia_corasur.gx_comprobante cp on cp.ctipdocu=c.ctipdocu
where canudocu = 'N' and (c.ctipdocu like '%1%' or c.ctipdocu like '%3%') 
and c.ccodinte="_5PC0ZKJ84" 
-- and d.ccodprod <> "SERVICIOS"
order by c.ccodinte;
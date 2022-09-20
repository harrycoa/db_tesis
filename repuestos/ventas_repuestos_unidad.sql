select 	c.ccodinte as Codigo_Interno, 
		c.ffecemis as Fecha_Emision, 
        c.ctipdocu as Tipo_Documento, 
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
        d.npreunit as Precio_Unitario,
        d.ntotregi as Precio_Total
from galaxia_corasur.gx_salidac c
inner join galaxia_corasur.gx_salidad d on c.ccodinte=d.ccodinte
where canudocu = 'N' and (ctipdocu like '%1%' or ctipdocu like '%3%') 
and c.ccodinte="_5PC0ZKJ84"
order by c.ccodinte
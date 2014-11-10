package model.$AppName$.$Table0.loObjName$;

$comments$

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
$if(Table0.nPk)$import javax.persistence.IdClass;$endif$
import javax.persistence.Table;

@Entity
@Table(name = "$Table0.tableName$")
$if(Table0.nPk)$
@IdClass($Table0.objName$Pk.class) 
$endif$

public class $Table0.objName${
	$Columns0:{ c | $if(!Table0.nPk)$$if(c.Pk)$@Id
//Habilite este codigo para generar automaticamente la llave primaria esta depende de una tabla
//@TableGenerator(name = "$Table0.tableName$_GEN", table = "<PREFIJO>_PKID",                 // <= Este string define la tabla dond se almacenan el consecutivo
//        pkColumnName="PKID", valueColumnName="PKIDVALU",                             // <= Columnas de la tabla 1: PK, 2: Columna del valor
//        pkColumnValue="$Table0.tableName$_PK", initialValue = 1, allocationSize = 1) // <= Valor a buscar por medio de la llave primaria
//@GeneratedValue(strategy = GenerationType.TABLE, generator = "$Table0.tableName$_GEN") $endif$$endif$
 
@Column(name = "$c.name$")
protected $c.type.ormType$ $c.loName$; }; separator="\n"$

	public $Table0.objName$(){
	
	}

$Columns0:{ c |
	$if(Table0.nPk)$$if(c.Pk)$@Id $endif$$endif$	public $c.type.ormType$ get$c.upName$(){
		return $c.loName$;
	}
	
	public void set$c.upName$($c.type.ormType$ $c.loName$){
		this.$c.loName$ = $c.loName$;
	}};separator="\n"$


	static public String[] getNames(){
		return new String[]{ $Columns0:{c|"$c.name$"}; separator=", "$ };
	}
	
	
	public String toString(){
		return  $Columns0:{ c | get$c.upName$()}; separator="+\"|\"+"$; 
	}
		
	
	public void assign($Table0.objName$ p){
		$Columns0:{ c | p.set$c.upName$(this.$c.loName$); }; separator="\n"$	
	}
	
	public $Table0.objName$ createCopy(){
		$Table0.objName$ p = new $Table0.objName$();
		
		assign(p);		
		return p;	
	}
}
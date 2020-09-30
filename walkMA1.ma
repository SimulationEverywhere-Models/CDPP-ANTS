[top]
components : walk

[walk]
type : cell
dim : (16, 16,2)
delay : transport
defaultDelayTime  : 100
border : wrapped 

neighbors : walk(-2,0,0)
neighbors : walk(-1,-1,0) walk(-1,0,0) walk(-1,1,0)
neighbors : walk(0,-2,0) walk(0,-1,0) walk(0,0,0)   walk(0,1,0) walk(0,2,0) 
neighbors : walk(1,-1,0)   walk(1,0,0) walk(1,1,0) 
neighbors : walk(2,0,0)  
neighbors : walk(-2,0,1)
neighbors : walk(-1,-1,1) walk(-1,0,1) walk(-1,1,1)
neighbors : walk(0,-2,1) walk(0,-1,1) walk(0,0,1)   walk(0,1,1) walk(0,2,1) 
neighbors : walk(1,-1,1)   walk(1,0,1) walk(1,1,1) 
neighbors : walk(2,0,1)  

initialvalue : 0
initialCellsValue : walk1.val
localtransition : walk-rule

[walk-rule]
rule : {round(uniform(1,4))} 100  { cellpos(2)=0 and (0,0,0) = 0 and
	        ((0,-1,0)=2 or (-1,0,0)=3 or (1,0,0)=1 or (0,1,0)=4 )
				  }
rule : 0 100 {cellpos(2)=0 and (0,0,0)=0 and t}

rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=1 and (-1,0,0)!=0 }
rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=1 and (-1,0,0)=0 and
(
				( (0,0,1)<(-2,0,1) and (-2,0,0)=3) or
				( (0,0,1)<(-1,-1,1) and (-1,-1,0)=2) or
				( (0,0,1)<(-1,1,1) and (-1,1,0)=4 )
)
					     		}
rule : 0 100 {cellpos(2)=0 and (0,0,0)=1 and t}

rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=2 and (0,1,0)!=0 }
rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=2 and (0,1,0)=0 and
(
				( (0,0,1)<(0,2,1) and (0,2,0)=4) or
				( (0,0,1)<(-1,1,1) and (-1,1,0)=3) or
				( (0,0,1)<(1,1,1) and (1,1,0)=1 )
)
					        	}
rule : 0 100 {cellpos(2)=0 and (0,0,0)=2 and t}


rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=3 and (1,0,0)!=0 }
rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=3 and (1,0,0)=0 and
(
				( (0,0,1)<(2,0,1) and (2,0,0)=1) or
				( (0,0,1)<(1,1,1) and (1,1,0)=4) or
				( (0,0,1)<(1,-1,1) and (1,-1,0)=2 )
)
								}
rule : 0 100 {cellpos(2)=0 and (0,0,0)=3 and t}

rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=4 and (0,-1,0)!=0 }
rule : {round(uniform(1,4))} 100 {cellpos(2)=0 and (0,0,0)=4 and (0,-1,0)=0 and
(
				( (0,0,1)<(0,-2,1) and (0,-2,0)=2) or
				( (0,0,1)<(-1,-1,1) and (-1,-1,0)=3) or
				( (0,0,1)<(1,-1,1) and (1,-1,0)=1 )
)
					      		}
rule : 0 100 {cellpos(2)=0 and (0,0,0)=4 and t}

rule : 0 100 { cellpos(2)=0 and (0,0,0)=1 and ( (0,0,1)=(-1,-1,1) or (0,0,1)=(-1,1,1) or (0,0,1)=(-2,0,1) )}
rule : 0 100 { cellpos(2)=0 and (0,0,0)=2 and ( (0,0,1)=(-1,1,1) or (0,0,1)=(1,1,1) or (0,0,1)=(0,2,1) )}
rule : 0 100 { cellpos(2)=0 and (0,0,0)=3 and ( (0,0,1)=(1,-1,1) or (0,0,1)=(1,1,1) or (0,0,1)=(2,0,1) )}
rule : 0 100 { cellpos(2)=0 and (0,0,0)=4 and ( (0,0,1)=(-1,-1,1) or (0,0,1)=(1,-1,1) or (0,0,1)=(0,-2,1) )}

rule : {uniform(1,8)} 100 {cellpos(2)=1 and t}

rule : 0 100 {cellpos(2)=0 and (0,0,0)>0 and t}

rule : 0 100 {t}






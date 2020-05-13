version 1.0

task Spaln {
  input {
    Boolean eE
    Boolean xcXc
    Boolean xgXg
    Boolean xkXk
    Boolean xbXb
    Boolean xXA
    Boolean xrXr
    Boolean gG
    Boolean tT
    Boolean eE
    Boolean hH
    String lsLs
    Boolean mM
    Boolean oO
    Boolean oO
    Boolean qQ
    Boolean rR
    Boolean sS
    Boolean tT
    Boolean aA
    Boolean aA
    Boolean dD
    Boolean dD
    Boolean gG
    Boolean lL
    Boolean oO
    Boolean paPa
    Boolean pwPw
    Boolean pqPq
    Boolean rR
    Boolean uU
    Boolean vV
    Boolean wW
    Boolean tT
    Boolean yaYa
    Boolean yl3Yl3
    Boolean ymYm
    Boolean ynYn
    Boolean yoYo
    Boolean yxYx
    Boolean yyYy
    Boolean yYZ
    Boolean ybYb
    Boolean yiYi
    Boolean ylYl
    Boolean ysYs
    Boolean yx0Yx0
    Boolean yYZ
    Boolean xgXg
  }
  command <<<
    spaln \
      ~{true="-E" false="" eE} \
      ~{true="-XC" false="" xcXc} \
      ~{true="-XG" false="" xgXg} \
      ~{true="-Xk" false="" xkXk} \
      ~{true="-Xb" false="" xbXb} \
      ~{true="-Xa" false="" xXA} \
      ~{true="-Xr" false="" xrXr} \
      ~{true="-g" false="" gG} \
      ~{true="-t" false="" tT} \
      ~{true="-E" false="" eE} \
      ~{true="-H" false="" hH} \
      ~{if defined(lsLs) then ("-LS " +  '"' + lsLs + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{true="-O" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{true="-Q" false="" qQ} \
      ~{true="-R" false="" rR} \
      ~{true="-S" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="-A" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="-g" false="" gG} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-pa" false="" paPa} \
      ~{true="-pw" false="" pwPw} \
      ~{true="-pq" false="" pqPq} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{true="-w" false="" wW} \
      ~{true="-t" false="" tT} \
      ~{true="-ya" false="" yaYa} \
      ~{true="-yl3" false="" yl3Yl3} \
      ~{true="-ym" false="" ymYm} \
      ~{true="-yn" false="" ynYn} \
      ~{true="-yo" false="" yoYo} \
      ~{true="-yx" false="" yxYx} \
      ~{true="-yy" false="" yyYy} \
      ~{true="-yz" false="" yYZ} \
      ~{true="-yB" false="" ybYb} \
      ~{true="-yI" false="" yiYi} \
      ~{true="-yL" false="" ylYl} \
      ~{true="-yS" false="" ysYs} \
      ~{true="-yX0" false="" yx0Yx0} \
      ~{true="-yZ" false="" yYZ} \
      ~{true="-XG" false="" xgXg}
  >>>
}
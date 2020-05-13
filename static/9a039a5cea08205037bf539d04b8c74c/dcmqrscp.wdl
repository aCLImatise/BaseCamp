version 1.0

task Dcmqrscp {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean cC
    Boolean sS
    Boolean requireRequireFind
    Boolean noNoParallelStore
    Boolean disableDisableGet
    Boolean allowAllowShutdown
    Boolean xfXf
    Boolean xmXm
    Boolean zaZa
    Boolean zhZh
    Boolean zvZv
    Boolean qpQp
    Boolean qsQs
    Boolean qoQo
    Boolean xX
    Boolean xeXe
    Boolean xbXb
    Boolean xiXi
    Boolean xsXs
    Boolean xyXy
    Boolean xxXx
    Boolean xvXv
    Boolean xwXw
    Boolean xtXt
    Boolean xuXu
    Boolean xmXm
    Boolean xhXh
    Boolean xnXn
    Boolean xlXl
    Boolean xrXr
    Boolean xdXd
    Boolean toTo
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean disableDisableHostLookup
    Boolean refuseRefuse
    Boolean rejectReject
    Boolean ignoreIgnore
    Boolean upUp
    Boolean uU
    Boolean fF
    Boolean gG
    Boolean eE
    String? portPort
  }
  command <<<
    dcmqrscp \
      ~{portPort} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="--require-find" false="" requireRequireFind} \
      ~{true="--no-parallel-store" false="" noNoParallelStore} \
      ~{true="--disable-get" false="" disableDisableGet} \
      ~{true="--allow-shutdown" false="" allowAllowShutdown} \
      ~{true="-XF" false="" xfXf} \
      ~{true="-XM" false="" xmXm} \
      ~{true="-ZA" false="" zaZa} \
      ~{true="-ZH" false="" zhZh} \
      ~{true="-ZV" false="" zvZv} \
      ~{true="-QP" false="" qpQp} \
      ~{true="-QS" false="" qsQs} \
      ~{true="-QO" false="" qoQo} \
      ~{true="-x" false="" xX} \
      ~{true="-xe" false="" xeXe} \
      ~{true="-xb" false="" xbXb} \
      ~{true="-xi" false="" xiXi} \
      ~{true="-xs" false="" xsXs} \
      ~{true="-xy" false="" xyXy} \
      ~{true="-xx" false="" xxXx} \
      ~{true="-xv" false="" xvXv} \
      ~{true="-xw" false="" xwXw} \
      ~{true="-xt" false="" xtXt} \
      ~{true="-xu" false="" xuXu} \
      ~{true="-xm" false="" xmXm} \
      ~{true="-xh" false="" xhXh} \
      ~{true="-xn" false="" xnXn} \
      ~{true="-xl" false="" xlXl} \
      ~{true="-xr" false="" xrXr} \
      ~{true="-xd" false="" xdXd} \
      ~{true="-to" false="" toTo} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--disable-host-lookup" false="" disableDisableHostLookup} \
      ~{true="--refuse" false="" refuseRefuse} \
      ~{true="--reject" false="" rejectReject} \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{true="-up" false="" upUp} \
      ~{true="-u" false="" uU} \
      ~{true="-F" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE}
  >>>
}
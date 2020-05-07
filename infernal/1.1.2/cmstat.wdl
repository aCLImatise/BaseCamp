version 1.0

task Cmstat {
  input {
    String eE
    String pP
    String tT
    String zZ
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    String keyKey
    Boolean hmmHmmOnly
    Boolean noNoHmmOnly
  }
  command <<<
    cmstat \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{true="--hmmonly" false="" hmmHmmOnly} \
      ~{true="--nohmmonly" false="" noNoHmmOnly}
  >>>
}
version 1.0

task Delta2cvg {
  input {
    String mM
    String mM
    Boolean mergeMerge
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    delta2cvg \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-merge" false="" mergeMerge} \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}
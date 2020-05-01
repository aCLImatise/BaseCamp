version 1.0

task GetSimpleCycs.py {
  input {
    String iI
    Int mM
  }
  command <<<
    get_simple_cycs.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}
version 1.0

task CreateIntervalsFiles {
  input {
    String mM
    String vV
  }
  command <<<
    CreateIntervalsFiles \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}
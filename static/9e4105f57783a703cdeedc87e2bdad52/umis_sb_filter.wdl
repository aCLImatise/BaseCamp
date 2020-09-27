version 1.0

task UmisSbFilter {
  input {
    File? bc
    String fast_q
  }
  command <<<
    umis sb_filter \
      ~{fast_q} \
      ~{if defined(bc) then ("--bc " +  '"' + bc + '"') else ""}
  >>>
  parameter_meta {
    bc: "--cores INTEGER\\n--nedit INTEGER\\n--help           Show this message and exit.\\n"
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}
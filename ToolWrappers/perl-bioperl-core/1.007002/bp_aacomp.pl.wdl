version 1.0

task BpAacomppl {
  input {
    String? f
    String aa_comp
    File filename
  }
  command <<<
    bp_aacomp_pl \
      ~{aa_comp} \
      ~{filename} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    aa_comp: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}
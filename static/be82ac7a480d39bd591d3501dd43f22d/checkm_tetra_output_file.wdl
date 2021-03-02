version 1.0

task CheckmTetraOutputFile {
  input {
    Boolean? q
    String? t
    String check_m
    String tetra
    String seq_file
    String output_file
  }
  command <<<
    checkm tetra output_file \
      ~{check_m} \
      ~{tetra} \
      ~{seq_file} \
      ~{output_file} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    t: ""
    check_m: ""
    tetra: ""
    seq_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
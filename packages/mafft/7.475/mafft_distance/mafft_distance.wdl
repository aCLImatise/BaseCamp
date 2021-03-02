version 1.0

task Mafftdistance {
  input {
    File? i
    Boolean? pd
    String input_file
  }
  command <<<
    mafft_distance \
      ~{input_file} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (pd) then "-PD" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mafft:7.475--h516909a_0"
  }
  parameter_meta {
    i: ""
    pd: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
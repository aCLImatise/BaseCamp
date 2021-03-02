version 1.0

task CorrectLinks {
  input {
    String? l
    String? g
    String mis_asm
  }
  command <<<
    correct_links \
      ~{mis_asm} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/salsa2:2.2--py27h78a066a_0"
  }
  parameter_meta {
    l: ""
    g: ""
    mis_asm: ""
  }
  output {
    File out_stdout = stdout()
  }
}
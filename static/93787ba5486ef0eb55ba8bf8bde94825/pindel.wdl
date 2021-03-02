version 1.0

task Pindel {
  input {
    String? p
    String? f
    String confidence_range_b
  }
  command <<<
    pindel \
      ~{confidence_range_b} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    f: ""
    confidence_range_b: "Example: DEL chr1 10000 50 chr2 20000 100 "
  }
  output {
    File out_stdout = stdout()
  }
}
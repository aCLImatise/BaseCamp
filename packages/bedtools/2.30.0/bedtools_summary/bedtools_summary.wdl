version 1.0

task BedtoolsSummary {
  input {
    String? g
    String? i
  }
  command <<<
    bedtools summary \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}
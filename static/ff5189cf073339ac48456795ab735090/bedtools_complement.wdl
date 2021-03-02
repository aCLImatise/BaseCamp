version 1.0

task BedtoolsComplement {
  input {
    Boolean? limit_output_solely
    String? g
    String? i
  }
  command <<<
    bedtools complement \
      ~{if (limit_output_solely) then "-L" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    limit_output_solely: "Limit output to solely the chromosomes with records in the input file."
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}
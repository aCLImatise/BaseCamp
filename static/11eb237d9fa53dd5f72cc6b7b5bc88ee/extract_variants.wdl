version 1.0

task ExtractVariants {
  input {
    Boolean? skip_header
    Boolean? invert
    String output_dot
  }
  command <<<
    extract_variants \
      ~{output_dot} \
      ~{if (skip_header) then "--skip-header" else ""} \
      ~{if (invert) then "--invert" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip_header: "Write gVCF output without header"
    invert: "Invert the filter so that only non-variant records are"
    output_dot: "help:"
  }
  output {
    File out_stdout = stdout()
  }
}
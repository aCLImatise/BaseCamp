version 1.0

task WgfastGenbankqcGenomePATH {
  input {
    Boolean? metadata
  }
  command <<<
    wgfast_genbankqc genome PATH \
      ~{if (metadata) then "--metadata" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    metadata: "Get metadata for genome at PATH"
  }
  output {
    File out_stdout = stdout()
  }
}
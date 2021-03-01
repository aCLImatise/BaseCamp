version 1.0

task Canongff3 {
  input {
    Boolean? infer
    Boolean? outfile
    Boolean? source
    String value
  }
  command <<<
    canon_gff3 \
      ~{value} \
      ~{if (infer) then "--infer" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (source) then "--source" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  parameter_meta {
    infer: "for transcript features lacking an explicitly\\ndeclared gene feature as a parent, create this\\nfeature on-they-fly"
    outfile: ": STRING    name of file to which GFF3 data will be\\nwritten; default is terminal (stdout)"
    source: ": STRING     reset the source of each feature to the given"
    value: "-v|--version            print version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}
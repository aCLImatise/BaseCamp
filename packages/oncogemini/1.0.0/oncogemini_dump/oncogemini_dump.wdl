version 1.0

task OncogeminiDump {
  input {
    Boolean? variants
    Boolean? genotypes
    Boolean? samples
    Boolean? header
    String? sep
    Boolean? tf_am
  }
  command <<<
    oncogemini dump \
      ~{if (variants) then "--variants" else ""} \
      ~{if (genotypes) then "--genotypes" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if (tf_am) then "--tfam" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    variants: "Report all rows/columns from the variants table."
    genotypes: "Report all rows/columns from the variants table with one line\\nper sample/genotype."
    samples: "Report all rows/columns from the samples table."
    header: "Add a header of column names to the output."
    sep: "Output column separator"
    tf_am: "Output sample information to TFAM format."
  }
  output {
    File out_stdout = stdout()
  }
}
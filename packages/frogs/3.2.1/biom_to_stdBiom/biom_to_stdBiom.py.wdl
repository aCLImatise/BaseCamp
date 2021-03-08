version 1.0

task BiomToStdBiompy {
  input {
    File? input_biom
    File? output_biom
    String? output_metadata
    File? log_file
    Boolean? v
  }
  command <<<
    biom_to_stdBiom_py \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  parameter_meta {
    input_biom: "The abundance file (format: BIOM)."
    output_biom: "The fully compatible abundance file (format: BIOM).\\n[Default: abundance.std.biom]"
    output_metadata: "The blast affiliations informations (format: TSV).\\n[Default: blast_informations.std.tsv]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}
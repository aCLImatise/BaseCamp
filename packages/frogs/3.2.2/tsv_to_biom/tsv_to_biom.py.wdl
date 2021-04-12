version 1.0

task TsvToBiompy {
  input {
    File? input_tsv
    File? input_multi_affi
    File? output_biom
    File? output_fast_a
    File? log_file
    Boolean? v
  }
  command <<<
    tsv_to_biom_py \
      ~{if defined(input_tsv) then ("--input-tsv " +  '"' + input_tsv + '"') else ""} \
      ~{if defined(input_multi_affi) then ("--input-multi-affi " +  '"' + input_multi_affi + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.2--py37_0"
  }
  parameter_meta {
    input_tsv: "This input file contain the abundance and metadata\\n(format: TSV)."
    input_multi_affi: "This input file will contain information about\\nmultiple alignements (format: TSV). Use this option\\nonly if your affiliation has been produced by FROGS."
    output_biom: "The output abundance file (format: BIOM)."
    output_fast_a: "The output sequences file (format: FASTA). If\\nsequences exist in your input TSV with tag\\nseed_sequence."
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_biom = "${in_output_biom}"
    File out_log_file = "${in_log_file}"
  }
}
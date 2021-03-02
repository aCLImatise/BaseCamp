version 1.0

task BiomToTsvpy {
  input {
    File? input_biom
    File? input_fast_a
    File? output_tsv
    File? output_multi_affi
    File? log_file
    Boolean? v
  }
  command <<<
    biom_to_tsv_py \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_tsv) then ("--output-tsv " +  '"' + output_tsv + '"') else ""} \
      ~{if defined(output_multi_affi) then ("--output-multi-affi " +  '"' + output_multi_affi + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_biom: "The abundance file (format: BIOM)."
    input_fast_a: "The sequences file (format: fasta). If you use this\\noption the sequences will be add in TSV."
    output_tsv: "This output file will contain the abundance and\\nmetadata (format: TSV). [Default: abundance.tsv]"
    output_multi_affi: "This output file will contain information about\\nmultiple alignements (format: TSV). Use this option\\nonly if your affiliation has been produced by FROGS."
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_tsv = "${in_output_tsv}"
    File out_output_multi_affi = "${in_output_multi_affi}"
    File out_log_file = "${in_log_file}"
  }
}
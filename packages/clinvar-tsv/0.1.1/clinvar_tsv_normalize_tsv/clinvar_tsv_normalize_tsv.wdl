version 1.0

task ClinvarTsvNormalizeTsv {
  input {
    File? reference
    File? input_tsv
    File? output_tsv
    String clin_var_tsv
    String normalize_tsv
  }
  command <<<
    clinvar_tsv normalize_tsv \
      ~{clin_var_tsv} \
      ~{normalize_tsv} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(input_tsv) then ("--input-tsv " +  '"' + input_tsv + '"') else ""} \
      ~{if defined(output_tsv) then ("--output-tsv " +  '"' + output_tsv + '"') else ""}
  >>>
  parameter_meta {
    reference: "Path to reference FASTA file"
    input_tsv: "Path to input TSV file."
    output_tsv: "Path to output TSV file.\\n"
    clin_var_tsv: ""
    normalize_tsv: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_tsv = "${in_output_tsv}"
  }
}
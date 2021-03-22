version 1.0

task PypgatkClipyEnsemblcheck {
  input {
    String? config_file
    File? input_fast_a
    File? output_file
    Boolean? add_stop_codons
    Int? num_aa
  }
  command <<<
    pypgatk_cli_py ensembl_check \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if (add_stop_codons) then "--add_stop_codons" else ""} \
      ~{if defined(num_aa) then ("--num_aa " +  '"' + num_aa + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.17--py_0"
  }
  parameter_meta {
    config_file: "Configuration to perform Ensembl database check"
    input_fast_a: "input_fasta file to perform the translation"
    output_file: "Output File"
    add_stop_codons: "If a stop codons is found, add a new protein with\\nsuffix (_Codon_{num})"
    num_aa: "Minimun number of aminoacids for a protein to be\\nincluded in the database"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
version 1.0

task RunCodemlpy {
  input {
    File? genomes_a
    File? genomes_b
    File? sico_zip
    File? code_ml_zip
    File? dnds_stats
  }
  command <<<
    run_codeml_py \
      ~{if defined(genomes_a) then ("--genomes-a " +  '"' + genomes_a + '"') else ""} \
      ~{if defined(genomes_b) then ("--genomes-b " +  '"' + genomes_b + '"') else ""} \
      ~{if defined(sico_zip) then ("--sico-zip " +  '"' + sico_zip + '"') else ""} \
      ~{if defined(code_ml_zip) then ("--codeml-zip " +  '"' + code_ml_zip + '"') else ""} \
      ~{if defined(dnds_stats) then ("--dnds-stats " +  '"' + dnds_stats + '"') else ""}
  >>>
  parameter_meta {
    genomes_a: "file with GenBank Project IDs from complete genomes table on each line for taxon A"
    genomes_b: "file with GenBank Project IDs from complete genomes table on each line for taxon B"
    sico_zip: "archive of aligned & trimmed single copy orthologous (SICO) genes"
    code_ml_zip: "destination file path for archive of codeml output per SICO gene"
    dnds_stats: "destination file path for file with dN, dS & dN/dS values per SICO gene"
  }
  output {
    File out_stdout = stdout()
    File out_code_ml_zip = "${in_code_ml_zip}"
  }
}
version 1.0

task ChadoExportGff {
  input {
    Boolean? verbose
    File? config
    Boolean? use_password
    File? output_file
    String? abbreviation
    Boolean? export_fast_a
    File? fast_a_file
    Boolean? include_obsolete
  }
  command <<<
    chado export gff \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (use_password) then "--use_password" else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if (export_fast_a) then "--export_fasta" else ""} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{if (include_obsolete) then "--include_obsolete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    output_file: "GFF output file"
    abbreviation: "abbreviation/short name of the organism"
    export_fast_a: "export FASTA sequences along with annotations"
    fast_a_file: "FASTA output file with sequences (default: paste to\\nend of GFF file)"
    include_obsolete: "export all features, including obsoletes"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_fast_a_file = "${in_fast_a_file}"
  }
}
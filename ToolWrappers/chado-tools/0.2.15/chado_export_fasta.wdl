version 1.0

task ChadoExportFasta {
  input {
    Boolean? verbose
    File? config
    Boolean? use_password
    File? output_file
    String? abbreviation
    String? sequence_type
    String? release
    Boolean? include_obsolete
  }
  command <<<
    chado export fasta \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (use_password) then "--use_password" else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence_type " +  '"' + sequence_type + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (include_obsolete) then "--include_obsolete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    output_file: "FASTA output file"
    abbreviation: "abbreviation/short name of the organism"
    sequence_type: "type of the sequences to be exported"
    release: "name of the FASTA release"
    include_obsolete: "export all features, including obsoletes"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
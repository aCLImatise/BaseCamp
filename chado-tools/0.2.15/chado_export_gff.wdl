version 1.0

task ChadoExportGff {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? output_file
    String? abbreviation
    Boolean? export_fast_a
    String? fast_a_file
    Boolean? include_obsolete
    String dbname
  }
  command <<<
    chado export gff \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{true="--export_fasta" false="" export_fast_a} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{true="--include_obsolete" false="" include_obsolete}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    output_file: "GFF output file"
    abbreviation: "abbreviation/short name of the organism"
    export_fast_a: "export FASTA sequences along with annotations"
    fast_a_file: "FASTA output file with sequences (default: paste to end of GFF file)"
    include_obsolete: "export all features, including obsoletes"
    dbname: "name of the database"
  }
}
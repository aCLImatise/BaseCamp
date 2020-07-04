version 1.0

task ExtractProteomeFromGff {
  input {
    String? output_suffix
    Int? translation_table
    Boolean? filter_sequences_missing
    Boolean? verbose_output_stdout
    String? output_directory
    Boolean? print_version_exit
  }
  command <<<
    extract_proteome_from_gff \
      ~{if defined(output_suffix) then ("-o " +  '"' + output_suffix + '"') else ""} \
      ~{if defined(translation_table) then ("-t " +  '"' + translation_table + '"') else ""} \
      ~{true="-f" false="" filter_sequences_missing} \
      ~{true="-v" false="" verbose_output_stdout} \
      ~{if defined(output_directory) then ("-d " +  '"' + output_directory + '"') else ""} \
      ~{true="-w" false="" print_version_exit}
  >>>
  parameter_meta {
    output_suffix: "output suffix [proteome.faa]"
    translation_table: "translation table [11]"
    filter_sequences_missing: "filter sequences with missing data"
    verbose_output_stdout: "verbose output to STDOUT"
    output_directory: "output directory"
    print_version_exit: "print version and exit"
  }
}
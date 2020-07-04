version 1.0

task EnrichmClassify {
  input {
    String? log
    String? verbosity
    String? output_directory
    Boolean? force
    String? genome_and_annotation_file
    String? genome_and_annotation_matrix
    String? custom_modules
    String? cut_off
    Boolean? aggregate
  }
  command <<<
    enrichm classify \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(genome_and_annotation_file) then ("--genome_and_annotation_file " +  '"' + genome_and_annotation_file + '"') else ""} \
      ~{if defined(genome_and_annotation_matrix) then ("--genome_and_annotation_matrix " +  '"' + genome_and_annotation_matrix + '"') else ""} \
      ~{if defined(custom_modules) then ("--custom_modules " +  '"' + custom_modules + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--aggregate" false="" aggregate}
  >>>
  parameter_meta {
    log: "Output logging information to this file."
    verbosity: "Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent"
    output_directory: "Output directory"
    force: "Overwrite previous run"
    genome_and_annotation_file: "Path to file containing a genome<tab>annotation list"
    genome_and_annotation_matrix: "Path to file containing a genome annotation matrix"
    custom_modules: "Tab separated file containing module name, definition as the columns"
    cut_off: "Output only modules with greater than this percent of the requied KO groups (default = print all modules)"
    aggregate: "Calculate the abundance of each pathway within each genome/sample (column)"
  }
}
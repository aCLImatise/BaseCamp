version 1.0

task Andi {
  input {
    Int? bootstrap
    File? file_of_filenames
    Boolean? join
    Boolean? low_memory
    String? model
    Float? significance_anchor_default
    String? progress
    Int? threads
    String? truncate_names
    Boolean? verbose
    String? options_dot_dot_dot
    File files_dot_dot_dot
  }
  command <<<
    andi \
      ~{options_dot_dot_dot} \
      ~{files_dot_dot_dot} \
      ~{if defined(bootstrap) then ("--bootstrap " +  '"' + bootstrap + '"') else ""} \
      ~{if defined(file_of_filenames) then ("--file-of-filenames " +  '"' + file_of_filenames + '"') else ""} \
      ~{true="--join" false="" join} \
      ~{true="--low-memory" false="" low_memory} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(significance_anchor_default) then ("-p " +  '"' + significance_anchor_default + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(truncate_names) then ("--truncate-names " +  '"' + truncate_names + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    bootstrap: "Print additional bootstrap matrices"
    file_of_filenames: "Read additional filenames from FILE; one per line"
    join: "Treat all sequences from one file as a single genome"
    low_memory: "Use less memory at the cost of speed"
    model: "Pick an evolutionary model of 'Raw', 'JC', 'Kimura'; default: JC"
    significance_anchor_default: "Significance of an anchor; default: 0.025"
    progress: "Print a progress bar 'always', 'never', or 'auto'; default: auto"
    threads: "Set the number of threads; by default, all processors are used"
    truncate_names: "names to ten characters"
    verbose: "Prints additional information"
    options_dot_dot_dot: ""
    files_dot_dot_dot: ""
  }
}
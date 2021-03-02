version 1.0

task Stark {
  input {
    File? use_file_input
    File? use_file_output
    Int? log
    Int? merge_type
    Boolean? unify_before_run
    Int? statistics
  }
  command <<<
    stark \
      ~{if defined(use_file_input) then ("--input " +  '"' + use_file_input + '"') else ""} \
      ~{if defined(use_file_output) then ("--output " +  '"' + use_file_output + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(merge_type) then ("--merge-type " +  '"' + merge_type + '"') else ""} \
      ~{if (unify_before_run) then "--unify-before-run" else ""} \
      ~{if defined(statistics) then ("--statistics " +  '"' + statistics + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_file_input: "use FILE for input"
    use_file_output: "use FILE for output"
    log: "use LEVEL for log level (0=OFF, 1000=ALL)"
    merge_type: "use TYPE for merging (0=no merge, 1=only node reducing merges, 2=all merges)"
    unify_before_run: "unify input file unitigs before use"
    statistics: "print statistics (0=no statistics, 1=trivial statistics, 2=cpu-consuming statistics)"
  }
  output {
    File out_stdout = stdout()
    File out_use_file_output = "${in_use_file_output}"
  }
}
version 1.0

task MapulaCount {
  input {
    Boolean? reference_files_format
    Boolean? expected_counts_expectedcolumns
    File? outputs_sam_file
    Boolean? sets_formats_results
    Boolean? split_criteria_space
    Boolean? prefix_there_are
    String map_ula
  }
  command <<<
    mapula count \
      ~{map_ula} \
      ~{if (reference_files_format) then "-r" else ""} \
      ~{if (expected_counts_expectedcolumns) then "-c" else ""} \
      ~{if (outputs_sam_file) then "-o" else ""} \
      ~{if (sets_formats_results) then "-f" else ""} \
      ~{if (split_criteria_space) then "-s" else ""} \
      ~{if (prefix_there_are) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapula:1.1.0--py_0"
  }
  parameter_meta {
    reference_files_format: "[ [ ...]]  Reference .fasta file(s). Format name=path_to_ref."
    expected_counts_expectedcolumns: "[ [ ...]]  Expected counts CSV(s). Format name=path_to_counts. Expected\\ncolumns: reference,expected_count."
    outputs_sam_file: "Outputs a sam file from the parsed alignments. Use - for\\npiping out. (Default: None)."
    sets_formats_results: "Sets the format(s) in which to output results. [Choices: csv,\\njson, all] (Default: csv)."
    split_criteria_space: "[ ...]    Split by these criteria, space separated. [Choices: group\\nrun_id barcode read_group reference] (Default: group run_id\\nbarcode)."
    prefix_there_are: "Prefix of the output files, if there are any."
    map_ula: ""
  }
  output {
    File out_stdout = stdout()
    File out_outputs_sam_file = "${in_outputs_sam_file}"
  }
}
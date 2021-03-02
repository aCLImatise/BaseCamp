version 1.0

task RenameFilterFastq {
  input {
    File? output_file_stdout
    String? base_quality
    String args_t
    String library
  }
  command <<<
    rename_filter_fastq \
      ~{args_t} \
      ~{library} \
      ~{if defined(output_file_stdout) then ("--output " +  '"' + output_file_stdout + '"') else ""} \
      ~{if defined(base_quality) then ("--base-quality " +  '"' + base_quality + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_stdout: "Output file (stdout)"
    base_quality: "Lowest valide quality score (#)"
    args_t: ""
    library: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}
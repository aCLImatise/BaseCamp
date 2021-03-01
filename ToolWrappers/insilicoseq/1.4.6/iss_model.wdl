version 1.0

task IssModel {
  input {
    Boolean? quiet
    Boolean? debug
    String? bam
    File? output_file_prefix
  }
  command <<<
    iss model \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Disable info logging. (default: False)."
    debug: "Enable debug logging. (default: False)."
    bam: "aligned reads from which the model will be inferred\\n(Required)"
    output_file_prefix: "Output file prefix (Required)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}
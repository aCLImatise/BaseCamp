version 1.0

task IssModel {
  input {
    Boolean? quiet
    Boolean? debug
    String? bam
    File? output_file_path
  }
  command <<<
    iss model \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/insilicoseq:1.5.2--pyh3252c3a_0"
  }
  parameter_meta {
    quiet: "Disable info logging. (default: False)."
    debug: "Enable debug logging. (default: False)."
    bam: "aligned reads from which the model will be inferred\\n(Required)"
    output_file_path: "Output file path and prefix (Required)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}
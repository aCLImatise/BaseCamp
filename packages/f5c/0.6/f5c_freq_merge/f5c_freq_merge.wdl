version 1.0

task F5cFreqmerge {
  input {
    File? output_file_write
    String merge
    String multiple
    String methylation
    String frequency
    String files
    String into
    String one_dot
  }
  command <<<
    f5c freq_merge \
      ~{merge} \
      ~{multiple} \
      ~{methylation} \
      ~{frequency} \
      ~{files} \
      ~{into} \
      ~{one_dot} \
      ~{if defined(output_file_write) then ("-o " +  '"' + output_file_write + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/f5c:0.6--h8b6279f_0"
  }
  parameter_meta {
    output_file_write: "output file. Write to stdout if not specified"
    merge: ""
    multiple: ""
    methylation: ""
    frequency: ""
    files: ""
    into: ""
    one_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_write = "${in_output_file_write}"
  }
}
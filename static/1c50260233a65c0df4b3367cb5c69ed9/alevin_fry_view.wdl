version 1.0

task AlevinfryView {
  input {
    Boolean? help
    File? output_plaintextfile_file
    File? rad
    String? flags
  }
  command <<<
    alevin_fry view \
      ~{flags} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(output_plaintextfile_file) then ("--output " +  '"' + output_plaintextfile_file + '"') else ""} \
      ~{if defined(rad) then ("--rad " +  '"' + rad + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0"
  }
  parameter_meta {
    help: "Prints help information"
    output_plaintextfile_file: "output plain-text-file file"
    rad: "input RAD file"
    flags: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_plaintextfile_file = "${in_output_plaintextfile_file}"
  }
}
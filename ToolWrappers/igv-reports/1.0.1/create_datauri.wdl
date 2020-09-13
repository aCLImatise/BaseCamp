version 1.0

task CreateDatauri {
  input {
    File? file_type
    String? region
    File filename
  }
  command <<<
    create_datauri \
      ~{filename} \
      ~{if defined(file_type) then ("--filetype " +  '"' + file_type + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    file_type: "type of file to be converted to data uri"
    region: "genomic region to be converted in the form chr:start-\\nstop\\n"
    filename: "name of file to be converted to data uri"
  }
  output {
    File out_stdout = stdout()
  }
}
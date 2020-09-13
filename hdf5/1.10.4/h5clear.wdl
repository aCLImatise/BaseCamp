version 1.0

task H5clear {
  input {
    Boolean? status
    Boolean? image
    Boolean? filesize
    File? increment
    String options
  }
  command <<<
    h5clear \
      ~{options} \
      ~{if (status) then "--status" else ""} \
      ~{if (image) then "--image" else ""} \
      ~{if (filesize) then "--filesize" else ""} \
      ~{if defined(increment) then ("--increment " +  '"' + increment + '"') else ""}
  >>>
  parameter_meta {
    status: "Clear the status_flags field in the file's superblock"
    image: "Remove the metadata cache image from the file"
    filesize: "Print the file's EOA and EOF"
    increment: "Set the file's EOA to the maximum of (EOA, EOF) + C for the file <file_name>\\nC is >= 0; C is optional and will default to 1M when not set"
    options: "-h, --help                Print a usage message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}
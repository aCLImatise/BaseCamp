version 1.0

task H5repart {
  input {
    Boolean? produce_verbose_output
    Boolean? print_version_number
    Int? io_block_size
    Int? destination_member_size
    Boolean? family_to_sec_two
    String src
    String dst
  }
  command <<<
    h5repart \
      ~{src} \
      ~{dst} \
      ~{if (produce_verbose_output) then "-v" else ""} \
      ~{if (print_version_number) then "-V" else ""} \
      ~{if defined(io_block_size) then ("-b " +  '"' + io_block_size + '"') else ""} \
      ~{if defined(destination_member_size) then ("-m " +  '"' + destination_member_size + '"') else ""} \
      ~{if (family_to_sec_two) then "-family_to_sec2" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    produce_verbose_output: "Produce verbose output"
    print_version_number: "Print a version number and exit"
    io_block_size: "The I/O block size, defaults to 1kB"
    destination_member_size: "The destination member size or 1GB"
    family_to_sec_two: "Change file driver from family to sec2"
    src: "The name of the source file"
    dst: "The name of the destination files"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Bed2pos.pl {
  input {
    Boolean? check
    Boolean? unique
    File? send_output_file_default
    Boolean? pos
    String bed_file
  }
  command <<<
    bed2pos.pl \
      ~{bed_file} \
      ~{true="-check" false="" check} \
      ~{true="-unique" false="" unique} \
      ~{if defined(send_output_file_default) then ("-o " +  '"' + send_output_file_default + '"') else ""} \
      ~{true="-pos" false="" pos}
  >>>
  parameter_meta {
    check: "(Checks if the file is already peak/pos formatted)"
    unique: "(Make peaks names unique by adding numbers to replicate names)"
    send_output_file_default: "(Send output to this file, default: stdout)"
    pos: "(Send output to file with same name as input file with *.pos extension)"
    bed_file: ""
  }
}
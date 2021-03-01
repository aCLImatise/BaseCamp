version 1.0

task Bed2pospl {
  input {
    Boolean? check
    Boolean? unique
    File? send_output_file_default
    Boolean? pos
    File bed_file
  }
  command <<<
    bed2pos_pl \
      ~{bed_file} \
      ~{if (check) then "-check" else ""} \
      ~{if (unique) then "-unique" else ""} \
      ~{if defined(send_output_file_default) then ("-o " +  '"' + send_output_file_default + '"') else ""} \
      ~{if (pos) then "-pos" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check: "(Checks if the file is already peak/pos formatted)"
    unique: "(Make peaks names unique by adding numbers to replicate names)"
    send_output_file_default: "(Send output to this file, default: stdout)"
    pos: "(Send output to file with same name as input file with *.pos extension)"
    bed_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_send_output_file_default = "${in_send_output_file_default}"
  }
}
version 1.0

task RgttoolspyBedStrand {
  input {
    File? input_bed_file
    Directory? input_directory
  }
  command <<<
    rgt_tools_py bed_strand \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(input_directory) then ("-o " +  '"' + input_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    input_directory: "Input directory"
  }
  output {
    File out_stdout = stdout()
  }
}
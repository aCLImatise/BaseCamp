version 1.0

task RgttoolspyWigTrimEnd {
  input {
    File? input_wig_file
    File? output_wig_file
    Boolean? chro_size
  }
  command <<<
    rgt_tools_py wig_trim_end \
      ~{if defined(input_wig_file) then ("-i " +  '"' + input_wig_file + '"') else ""} \
      ~{if defined(output_wig_file) then ("-o " +  '"' + output_wig_file + '"') else ""} \
      ~{if (chro_size) then "-chrosize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_wig_file: "Input WIG file"
    output_wig_file: "Output WIG file"
    chro_size: "Define path to the chromosome size file"
  }
  output {
    File out_stdout = stdout()
    File out_output_wig_file = "${in_output_wig_file}"
  }
}
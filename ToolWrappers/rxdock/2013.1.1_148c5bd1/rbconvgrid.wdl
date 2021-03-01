version 1.0

task Rbconvgrid {
  input {
    Boolean? inputfile_input_rbtvdwgridsf
    File? outputfile_output_insightii
    Boolean? gridnum_grid_number
    String input_file
    String? output_file
    String? grid_num
  }
  command <<<
    rbconvgrid \
      ~{input_file} \
      ~{output_file} \
      ~{grid_num} \
      ~{if (inputfile_input_rbtvdwgridsf) then "-i" else ""} \
      ~{if (outputfile_output_insightii) then "-o" else ""} \
      ~{if (gridnum_grid_number) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    inputfile_input_rbtvdwgridsf: "<InputFile> - input RbtVdwGridSF binary grid filename"
    outputfile_output_insightii: "<OutputFile> - output InsightII ascii grid filename"
    gridnum_grid_number: "<GridNum> - grid number to convert (default = list grids)"
    input_file: ""
    output_file: ""
    grid_num: ""
  }
  output {
    File out_stdout = stdout()
    File out_outputfile_output_insightii = "${in_outputfile_output_insightii}"
  }
}
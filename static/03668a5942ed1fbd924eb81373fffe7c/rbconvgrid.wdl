version 1.0

task Rbconvgrid {
  input {
    Boolean? inputfile_input_filename
    Boolean? outputfile_output_insightii
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
      ~{true="-i" false="" inputfile_input_filename} \
      ~{true="-o" false="" outputfile_output_insightii} \
      ~{true="-n" false="" gridnum_grid_number}
  >>>
  parameter_meta {
    inputfile_input_filename: "<InputFile> - input RbtVdwGridSF binary grid filename"
    outputfile_output_insightii: "<OutputFile> - output InsightII ascii grid filename"
    gridnum_grid_number: "<GridNum> - grid number to convert (default = list grids)"
    input_file: ""
    output_file: ""
    grid_num: ""
  }
}
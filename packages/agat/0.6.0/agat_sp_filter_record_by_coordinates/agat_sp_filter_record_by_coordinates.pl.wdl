version 1.0

task AgatSpFilterRecordByCoordinatespl {
  input {
    File? input_gtfgff_file
    File? coordinates
    String? exclude
    File? output_gff_file
    String agat_sp_filter_record_by_coordinates_do_tpl
    String verbosity_dot
  }
  command <<<
    agat_sp_filter_record_by_coordinates_pl \
      ~{agat_sp_filter_record_by_coordinates_do_tpl} \
      ~{verbosity_dot} \
      ~{if defined(input_gtfgff_file) then ("--input " +  '"' + input_gtfgff_file + '"') else ""} \
      ~{if defined(coordinates) then ("--coordinates " +  '"' + coordinates + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    input_gtfgff_file: "Input GTF/GFF file"
    coordinates: "String - tsv file containing the coordinates. Coordinates must\\nbe one per line. Each line must contain 3 fields separated by a\\ntabulation. Field1 is the sequence id Field2 is the start\\ncoordinate (included) Field3 is the end coordinate (included)"
    exclude: "Select only the features fully containined within the\\ncoordinates, exclude the overlapping ones."
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_filter_record_by_coordinates_do_tpl: "Description:"
    verbosity_dot: "-h or --help"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}
version 1.0

task RgttoolspyBedGetPromoters {
  input {
    File? input_file_bed
    File? output_bed_file
    String? organism
    Int? define_length_promoters
  }
  command <<<
    rgt_tools_py bed_get_promoters \
      ~{if defined(input_file_bed) then ("-i " +  '"' + input_file_bed + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""} \
      ~{if defined(define_length_promoters) then ("-l " +  '"' + define_length_promoters + '"') else ""}
  >>>
  parameter_meta {
    input_file_bed: "Input file (BED or gene list)"
    output_bed_file: "Output BED file"
    organism: "Define the organism (necessary if input is a gene list)"
    define_length_promoters: "Define length of promoters (default:1000bp)"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}
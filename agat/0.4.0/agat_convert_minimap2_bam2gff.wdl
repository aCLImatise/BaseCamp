version 1.0

task AgatConvertMinimap2Bam2gff.pl {
  input {
    String? input_file_sam
    String? bam
    String? sam
    String? output_gff_file
    String agat_convert_sp_minimap_two_bamtwogffdotpl
  }
  command <<<
    agat_convert_minimap2_bam2gff.pl \
      ~{agat_convert_sp_minimap_two_bamtwogffdotpl} \
      ~{if defined(input_file_sam) then ("--input " +  '"' + input_file_sam + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    input_file_sam: "Input file in sam (.sam extension) or bam (.bam extension) format."
    bam: "To force to use the input file as sam file."
    sam: "To force to use the input file as sam file."
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    agat_convert_sp_minimap_two_bamtwogffdotpl: ""
  }
}
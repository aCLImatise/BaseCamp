version 1.0

task AgatConvertMinimap2Bam2gffpl {
  input {
    File? input_file_extension
    File? bam
    File? sam
    File? output_gff_file
    Int agat_convert_sp_minimap_two_bamtwogffdotpl
    File path_dot
  }
  command <<<
    agat_convert_minimap2_bam2gff_pl \
      ~{agat_convert_sp_minimap_two_bamtwogffdotpl} \
      ~{path_dot} \
      ~{if defined(input_file_extension) then ("--input " +  '"' + input_file_extension + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    input_file_extension: "Input file in sam (.sam extension) or bam (.bam extension)\\nformat."
    bam: "To force to use the input file as sam file."
    sam: "To force to use the input file as sam file."
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_convert_sp_minimap_two_bamtwogffdotpl: "Description:"
    path_dot: "Usage:\\nagat_convert_sp_minimap2_bam2gff.pl -i infile.bam [ -o outfile ]\\nagat_convert_sp_minimap2_bam2gff.pl -i infile.sam [ -o outfile ]\\nagat_convert_sp_minimap2_bam2gff.pl --help"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}
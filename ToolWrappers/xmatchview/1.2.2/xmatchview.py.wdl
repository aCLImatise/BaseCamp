version 1.0

task Xmatchviewpy {
  input {
    File? file_crossmatch_format
    File? genome_fasta_file
    File? contiggenome_fasta_file
    File? e
    File? y
    Int? threshold_eg_m
    Int? bp_similarity_block
    String? pixel_basepair_scale
    Int? bp_evaluate_numbers
    Int? value_transparent_solid
    File? image_file_format
    File? path_directory_fonts
  }
  command <<<
    xmatchview_py \
      ~{if defined(file_crossmatch_format) then ("-x " +  '"' + file_crossmatch_format + '"') else ""} \
      ~{if defined(genome_fasta_file) then ("-s " +  '"' + genome_fasta_file + '"') else ""} \
      ~{if defined(contiggenome_fasta_file) then ("-q " +  '"' + contiggenome_fasta_file + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(threshold_eg_m) then ("-m " +  '"' + threshold_eg_m + '"') else ""} \
      ~{if defined(bp_similarity_block) then ("-b " +  '"' + bp_similarity_block + '"') else ""} \
      ~{if defined(pixel_basepair_scale) then ("-c " +  '"' + pixel_basepair_scale + '"') else ""} \
      ~{if defined(bp_evaluate_numbers) then ("-r " +  '"' + bp_evaluate_numbers + '"') else ""} \
      ~{if defined(value_transparent_solid) then ("-a " +  '"' + value_transparent_solid + '"') else ""} \
      ~{if defined(image_file_format) then ("-f " +  '"' + image_file_format + '"') else ""} \
      ~{if defined(path_directory_fonts) then ("-p " +  '"' + path_directory_fonts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_crossmatch_format: "file (cross_match .rep or Pairwise mApping Format .paf)"
    genome_fasta_file: "genome fasta file"
    contiggenome_fasta_file: "contig/genome fasta file"
    e: "features (eg. exons) coordinates GFF tsv file (start end) - optional"
    y: "features (eg. exons) coordinates GFF tsv file (start end) - optional"
    threshold_eg_m: "threshold (e.g. -m 10 allows representation of repeats having up to 10% mismatch"
    bp_similarity_block: "(bp) of similarity block to display"
    pixel_basepair_scale: "(pixel to basepair scale, for displaying the image)"
    bp_evaluate_numbers: "(bp) to evaluate repeat frequency (smaller numbers will increase the resolution, but will affect drastically the run time.  recommended -r=50)"
    value_transparent_solid: "value, from 0 (transparent) to 255 (solid, default)"
    image_file_format: "image file format (png, tiff, jpeg, or gif) NOTE: png and tiff recommended."
    path_directory_fonts: "path to the directory with fonts on your system (please refer to the documentation for fonts used)"
  }
  output {
    File out_stdout = stdout()
  }
}
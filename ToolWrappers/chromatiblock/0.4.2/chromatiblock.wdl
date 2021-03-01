version 1.0

task Chromatiblock {
  input {
    Directory? input_directory
    String? order_list
    Array[String] fast_a_files
    Directory? working_directory
    File? sibel_i_a_path
    String? sibel_i_a_mode
    String? out
    Int? ppi
    Int? min_block_size
    String? categorise
    String? genes_of_interest_blast
    File? genes_of_interest_file
    String? genome_height
    String? gap
    Directory? skip_sibel_i_a
    Boolean? skip_blast
    File? maf_alignment
    Int? svg_pan_zoom_location
    Int gpl_v_three
    String or
  }
  command <<<
    chromatiblock \
      ~{gpl_v_three} \
      ~{or} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(order_list) then ("--order_list " +  '"' + order_list + '"') else ""} \
      ~{if defined(fast_a_files) then ("--fasta_files " +  '"' + fast_a_files + '"') else ""} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(sibel_i_a_path) then ("--sibelia_path " +  '"' + sibel_i_a_path + '"') else ""} \
      ~{if defined(sibel_i_a_mode) then ("--sibelia_mode " +  '"' + sibel_i_a_mode + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(ppi) then ("--ppi " +  '"' + ppi + '"') else ""} \
      ~{if defined(min_block_size) then ("--min_block_size " +  '"' + min_block_size + '"') else ""} \
      ~{if defined(categorise) then ("--categorise " +  '"' + categorise + '"') else ""} \
      ~{if defined(genes_of_interest_blast) then ("--genes_of_interest_blast " +  '"' + genes_of_interest_blast + '"') else ""} \
      ~{if defined(genes_of_interest_file) then ("--genes_of_interest_file " +  '"' + genes_of_interest_file + '"') else ""} \
      ~{if defined(genome_height) then ("--genome_height " +  '"' + genome_height + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if (skip_sibel_i_a) then "--skip_sibelia" else ""} \
      ~{if (skip_blast) then "--skip_blast" else ""} \
      ~{if defined(maf_alignment) then ("--maf_alignment " +  '"' + maf_alignment + '"') else ""} \
      ~{if defined(svg_pan_zoom_location) then ("--svg_pan_zoom_location " +  '"' + svg_pan_zoom_location + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory: "Directory of fasta files to use as input."
    order_list: "List of fasta files in desired order."
    fast_a_files: "List of fasta/genbank files to use as input"
    working_directory: "Folder to write intermediate files."
    sibel_i_a_path: "Specify path to sibelia (does not need to be set if\\nSibelia binary is in path)."
    sibel_i_a_mode: "mode for running sibelia <loose|fine|far>"
    out: "Location to write output (options\\n*.svg/*.html/*.png/*.pdf) will default to svg (and add\\nextension)."
    ppi: "pixels per inch (only used for png, figure width is 8\\ninches)"
    min_block_size: "Minimum size of syntenic block."
    categorise: "color blocks by category"
    genes_of_interest_blast: "mark genes of interest using BLASTx"
    genes_of_interest_file: "mark genes of interest using a file"
    genome_height: "Height of genome blocks"
    gap: "gap between genomes"
    skip_sibel_i_a: "Use sibelia output already in working directory"
    skip_blast: "use existing BLASTx file for annotation"
    maf_alignment: "use a maf file for alignment."
    svg_pan_zoom_location: "location of svg-pan-zoom.min.js"
    gpl_v_three: "USAGE: chromatiblock -f genome1.fasta genome2.fasta .... genomeN.fasta -o image.svg "
    or: "chromatiblock -d /path/to/fasta_directory/ -o image.svg"
  }
  output {
    File out_stdout = stdout()
    Directory out_skip_sibel_i_a = "${in_skip_sibel_i_a}"
  }
}
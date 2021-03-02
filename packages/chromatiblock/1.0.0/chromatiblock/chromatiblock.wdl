version 1.0

task Chromatiblock {
  input {
    Directory? input_directory
    Array[String] fast_a_files
    String? order_list
    Directory? working_directory
    File? sibel_i_a_path
    String? sibel_i_a_mode
    File? extensions
    String? out
    File? output_format
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
    String? add_fast_a_labels
    Directory? force
    Boolean? keep
    Int gpl_v_three
    String or
  }
  command <<<
    chromatiblock \
      ~{gpl_v_three} \
      ~{or} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(fast_a_files) then ("--fasta_files " +  '"' + fast_a_files + '"') else ""} \
      ~{if defined(order_list) then ("--order_list " +  '"' + order_list + '"') else ""} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(sibel_i_a_path) then ("--sibelia_path " +  '"' + sibel_i_a_path + '"') else ""} \
      ~{if defined(sibel_i_a_mode) then ("--sibelia_mode " +  '"' + sibel_i_a_mode + '"') else ""} \
      ~{if defined(extensions) then ("--extensions " +  '"' + extensions + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
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
      ~{if defined(svg_pan_zoom_location) then ("--svg_pan_zoom_location " +  '"' + svg_pan_zoom_location + '"') else ""} \
      ~{if defined(add_fast_a_labels) then ("--add_fasta_labels " +  '"' + add_fast_a_labels + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (keep) then "--keep" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromatiblock:1.0.0--py_0"
  }
  parameter_meta {
    input_directory: "Directory of fasta files to use as input."
    fast_a_files: "List of fasta/genbank files to use as input"
    order_list: "List of fasta files in desired order."
    working_directory: "Folder to write intermediate files."
    sibel_i_a_path: "Specify path to sibelia (does not need to be set if\\nSibelia binary is in path)."
    sibel_i_a_mode: "mode for running sibelia <loose|fine|far>"
    extensions: "When -d is used for input files, chromatiblock will\\ncheck against this comma seperated list to determine\\nwhether to add file to the list of input sequences."
    out: "Location to write output."
    output_format: "file format to write to, if all is selected --out will\\nbe a prefix and extension will be added"
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
    add_fast_a_labels: "add fasta names to figure"
    force: "overwrite working directory and output"
    keep: "keep working directory"
    gpl_v_three: "USAGE: chromatiblock -f genome1.fasta genome2.fasta .... genomeN.fasta -w working_dir -o figure.html "
    or: "chromatiblock -d /path/to/fasta_directory/ -w working_dir -o figure.svg -of svg"
  }
  output {
    File out_stdout = stdout()
    File out_output_format = "${in_output_format}"
    Directory out_skip_sibel_i_a = "${in_skip_sibel_i_a}"
    Directory out_force = "${in_force}"
  }
}
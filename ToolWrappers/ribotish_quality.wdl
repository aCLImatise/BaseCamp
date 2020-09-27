version 1.0

task RibotishQuality {
  input {
    File? riboseq_bam_file
    File? gene_annotation_file
    File? output_data_file
    Boolean? tis
    File? input_previous_output
    File? gene_format
    File? chr_map
    File? output_pdf_figure
    File? output_offset_defaultribobampath
    Int? range_tag_length
    Int? position_range_stop
    Int? bins
    Boolean? nom_zero
    Float? th
    Int? max_nh
    Int? min_mapq
    Boolean? secondary
    Boolean? paired
    Boolean? colorblind
    String? colors
    Int? number_processes_default
    Boolean? verbose
  }
  command <<<
    ribotish quality \
      ~{if defined(riboseq_bam_file) then ("-b " +  '"' + riboseq_bam_file + '"') else ""} \
      ~{if defined(gene_annotation_file) then ("-g " +  '"' + gene_annotation_file + '"') else ""} \
      ~{if defined(output_data_file) then ("-o " +  '"' + output_data_file + '"') else ""} \
      ~{if (tis) then "--tis" else ""} \
      ~{if defined(input_previous_output) then ("-i " +  '"' + input_previous_output + '"') else ""} \
      ~{if defined(gene_format) then ("--geneformat " +  '"' + gene_format + '"') else ""} \
      ~{if defined(chr_map) then ("--chrmap " +  '"' + chr_map + '"') else ""} \
      ~{if defined(output_pdf_figure) then ("-f " +  '"' + output_pdf_figure + '"') else ""} \
      ~{if defined(output_offset_defaultribobampath) then ("-r " +  '"' + output_offset_defaultribobampath + '"') else ""} \
      ~{if defined(range_tag_length) then ("-l " +  '"' + range_tag_length + '"') else ""} \
      ~{if defined(position_range_stop) then ("-d " +  '"' + position_range_stop + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if (nom_zero) then "--nom0" else ""} \
      ~{if defined(th) then ("--th " +  '"' + th + '"') else ""} \
      ~{if defined(max_nh) then ("--maxNH " +  '"' + max_nh + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMapQ " +  '"' + min_mapq + '"') else ""} \
      ~{if (secondary) then "--secondary" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (colorblind) then "--colorblind" else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(number_processes_default) then ("-p " +  '"' + number_processes_default + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    riboseq_bam_file: "Riboseq bam file"
    gene_annotation_file: "Gene annotation file"
    output_data_file: "Output data file (default: ribobampath[:-4]+\\n'_qual.txt')"
    tis: "The data is TIS enriched (for LTM & Harritonine)"
    input_previous_output: "Input previous output file, do not read gene file and\\nbam file again"
    gene_format: "Gene annotation file format (gtf, bed, gpd, gff,\\ndefault: auto)"
    chr_map: "Input chromosome id mapping table file if annotation\\nchr ids are not same as chr ids in bam/fasta files"
    output_pdf_figure: "Output pdf figure file (default: ribobampath[:-4]+\\n'_qual.pdf')"
    output_offset_defaultribobampath: "Output offset parameter file (default:\\nribobampath[:-4]+ '.para.py')"
    range_tag_length: "Range of tag length (default: 25,35)"
    position_range_stop: "Position range near start codon or stop codon\\n(default: -40,20)"
    bins: "Bins for cds profile (default: 20)"
    nom_zero: "Do not consider reads with mismatch at position 0 as a\\nnew group"
    th: "Threshold for quality (default: 0.5)"
    max_nh: "Max NH value allowed for bam alignments (default: 1)"
    min_mapq: "Min MapQ value required for bam alignments (default:\\n1)"
    secondary: "Use bam secondary alignments"
    paired: "Reads are paired end"
    colorblind: "Use a color style readable for color blind people\\n('#F00078,#00F000,#0078F0')"
    colors: "User specified Matplotlib accepted color codes for\\nthree frames (default: 'r,g,b')"
    number_processes_default: "Number of processes (default: 1)"
    verbose: "Increase output verbosity"
  }
  output {
    File out_stdout = stdout()
    File out_output_data_file = "${in_output_data_file}"
    File out_output_pdf_figure = "${in_output_pdf_figure}"
    File out_output_offset_defaultribobampath = "${in_output_offset_defaultribobampath}"
  }
}
version 1.0

task RibotishQuality {
  input {
    String? riboseq_bam_file
    String? gene_annotation_file
    String? output_data_file
    Boolean? tis
    String? input_previous_output
    String? gene_format
    String? chr_map
    String? output_pdf_figure
    String? output_offset_ribobampath
    String? range_tag_length
    String? position_range_start
    String? bins
    Boolean? nom_zero
    String? th
    Int? max_nh
    Int? min_mapq
    Boolean? secondary
    Boolean? paired
    Boolean? colorblind
    String? colors
    String? number_processes_default
    Boolean? verbose
  }
  command <<<
    ribotish quality \
      ~{if defined(riboseq_bam_file) then ("-b " +  '"' + riboseq_bam_file + '"') else ""} \
      ~{if defined(gene_annotation_file) then ("-g " +  '"' + gene_annotation_file + '"') else ""} \
      ~{if defined(output_data_file) then ("-o " +  '"' + output_data_file + '"') else ""} \
      ~{true="--tis" false="" tis} \
      ~{if defined(input_previous_output) then ("-i " +  '"' + input_previous_output + '"') else ""} \
      ~{if defined(gene_format) then ("--geneformat " +  '"' + gene_format + '"') else ""} \
      ~{if defined(chr_map) then ("--chrmap " +  '"' + chr_map + '"') else ""} \
      ~{if defined(output_pdf_figure) then ("-f " +  '"' + output_pdf_figure + '"') else ""} \
      ~{if defined(output_offset_ribobampath) then ("-r " +  '"' + output_offset_ribobampath + '"') else ""} \
      ~{if defined(range_tag_length) then ("-l " +  '"' + range_tag_length + '"') else ""} \
      ~{if defined(position_range_start) then ("-d " +  '"' + position_range_start + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{true="--nom0" false="" nom_zero} \
      ~{if defined(th) then ("--th " +  '"' + th + '"') else ""} \
      ~{if defined(max_nh) then ("--maxNH " +  '"' + max_nh + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMapQ " +  '"' + min_mapq + '"') else ""} \
      ~{true="--secondary" false="" secondary} \
      ~{true="--paired" false="" paired} \
      ~{true="--colorblind" false="" colorblind} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(number_processes_default) then ("-p " +  '"' + number_processes_default + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    riboseq_bam_file: "Riboseq bam file"
    gene_annotation_file: "Gene annotation file"
    output_data_file: "Output data file (default: ribobampath[:-4]+ '_qual.txt')"
    tis: "The data is TIS enriched (for LTM & Harritonine)"
    input_previous_output: "Input previous output file, do not read gene file and bam file again"
    gene_format: "Gene annotation file format (gtf, bed, gpd, gff, default: auto)"
    chr_map: "Input chromosome id mapping table file if annotation chr ids are not same as chr ids in bam/fasta files"
    output_pdf_figure: "Output pdf figure file (default: ribobampath[:-4]+ '_qual.pdf')"
    output_offset_ribobampath: "Output offset parameter file (default: ribobampath[:-4]+ '.para.py')"
    range_tag_length: "Range of tag length (default: 25,35)"
    position_range_start: "Position range near start codon or stop codon (default: -40,20)"
    bins: "Bins for cds profile (default: 20)"
    nom_zero: "Do not consider reads with mismatch at position 0 as a new group"
    th: "Threshold for quality (default: 0.5)"
    max_nh: "Max NH value allowed for bam alignments (default: 1)"
    min_mapq: "Min MapQ value required for bam alignments (default: 1)"
    secondary: "Use bam secondary alignments"
    paired: "Reads are paired end"
    colorblind: "Use a color style readable for color blind people ('#F00078,#00F000,#0078F0')"
    colors: "User specified Matplotlib accepted color codes for three frames (default: 'r,g,b')"
    number_processes_default: "Number of processes (default: 1)"
    verbose: "Increase output verbosity"
  }
}
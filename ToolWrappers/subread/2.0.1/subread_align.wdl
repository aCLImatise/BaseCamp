version 1.0

task Subreadalign {
  input {
    String? base_name_index
    File? name_pairedend_file
    Int? type_sequencing_data
    File? name_output_file
    File? name_file_name
    Boolean? sam_input
    Boolean? bam_input
    Boolean? sam_output
    Boolean? offset_value_added
    Int? number_selected_subreads
    Int? consensus_threshold_reporting
    Int? consensus_threshold_non
    Boolean? multi_mapping
    Int? maximum_number_equallybest
    Int? maximum_length_bp
    Boolean? complex_indels
    Int? trim_five
    Int? trim_three
    Int? minimum_fragmentinsert_length
    Int? maximum_fragmentinsert_length
    Boolean? fffrrf_orientation_forwardreverse
    Int? number_cpu_threads
    String? rg_id
    String? rg
    Boolean? keep_read_order
    File? sort_reads_by_coordinates
    Boolean? convert_colorspace_read
    Int? dp_gap_open
    Boolean? sv
    Boolean? name_annotation_file
    Boolean? specify_format_provided
    Boolean? provide_alias_file
    String? gtf_feature
    String? gt_fattr
    Boolean? output_version_program
  }
  command <<<
    subread_align \
      ~{if defined(base_name_index) then ("-i " +  '"' + base_name_index + '"') else ""} \
      ~{if defined(name_pairedend_file) then ("-r " +  '"' + name_pairedend_file + '"') else ""} \
      ~{if defined(type_sequencing_data) then ("-t " +  '"' + type_sequencing_data + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_file_name) then ("-R " +  '"' + name_file_name + '"') else ""} \
      ~{if (sam_input) then "--SAMinput" else ""} \
      ~{if (bam_input) then "--BAMinput" else ""} \
      ~{if (sam_output) then "--SAMoutput" else ""} \
      ~{if (offset_value_added) then "-P" else ""} \
      ~{if defined(number_selected_subreads) then ("-n " +  '"' + number_selected_subreads + '"') else ""} \
      ~{if defined(consensus_threshold_reporting) then ("-m " +  '"' + consensus_threshold_reporting + '"') else ""} \
      ~{if defined(consensus_threshold_non) then ("-p " +  '"' + consensus_threshold_non + '"') else ""} \
      ~{if (multi_mapping) then "--multiMapping" else ""} \
      ~{if defined(maximum_number_equallybest) then ("-B " +  '"' + maximum_number_equallybest + '"') else ""} \
      ~{if defined(maximum_length_bp) then ("-I " +  '"' + maximum_length_bp + '"') else ""} \
      ~{if (complex_indels) then "--complexIndels" else ""} \
      ~{if defined(trim_five) then ("--trim5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""} \
      ~{if defined(minimum_fragmentinsert_length) then ("-d " +  '"' + minimum_fragmentinsert_length + '"') else ""} \
      ~{if defined(maximum_fragmentinsert_length) then ("-D " +  '"' + maximum_fragmentinsert_length + '"') else ""} \
      ~{if (fffrrf_orientation_forwardreverse) then "-S" else ""} \
      ~{if defined(number_cpu_threads) then ("-T " +  '"' + number_cpu_threads + '"') else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if (keep_read_order) then "--keepReadOrder" else ""} \
      ~{if defined(sort_reads_by_coordinates) then ("--sortReadsByCoordinates " +  '"' + sort_reads_by_coordinates + '"') else ""} \
      ~{if (convert_colorspace_read) then "-b" else ""} \
      ~{if defined(dp_gap_open) then ("--DPGapOpen " +  '"' + dp_gap_open + '"') else ""} \
      ~{if (sv) then "--sv" else ""} \
      ~{if (name_annotation_file) then "-a" else ""} \
      ~{if (specify_format_provided) then "-F" else ""} \
      ~{if (provide_alias_file) then "-A" else ""} \
      ~{if defined(gtf_feature) then ("--gtfFeature " +  '"' + gtf_feature + '"') else ""} \
      ~{if defined(gt_fattr) then ("--gtfAttr " +  '"' + gt_fattr + '"') else ""} \
      ~{if (output_version_program) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_name_index: "Base name of the index."
    name_pairedend_file: "Name of an input read file. If paired-end, this should be\\nthe first read file (typically containing \\\"R1\\\"in the file\\nname) and the second should be provided via \\\"-R\\\".\\nAcceptable formats include gzipped FASTQ, FASTQ, gzipped\\nFASTA and FASTA.\\nThese formats are identified automatically."
    type_sequencing_data: "Type of input sequencing data. Its values include\\n0: RNA-seq data\\n1: genomic DNA-seq data."
    name_output_file: "Name of an output file. By default, the output is in BAM\\nformat. Omitting this option makes the output be written to\\nSTDOUT."
    name_file_name: "Name of the second read file in paired-end data (typically\\ncontaining \\\"R2\\\" the file name)."
    sam_input: "Input reads are in SAM format."
    bam_input: "Input reads are in BAM format."
    sam_output: "Save mapping results in SAM format."
    offset_value_added: "<3:6>          Offset value added to the Phred quality score of each read\\nbase. '3' for phred+33 and '6' for phred+64. '3' by default."
    number_selected_subreads: "Number of selected subreads, 10 by default."
    consensus_threshold_reporting: "Consensus threshold for reporting a hit (minimal number of\\nsubreads that map in consensus) . If paired-end, this gives\\nthe consensus threshold for the anchor read (anchor read\\nreceives more votes than the other read in the same pair).\\n3 by default"
    consensus_threshold_non: "Consensus threshold for the non- anchor read in a pair. 1 by"
    multi_mapping: "Report multi-mapping reads in addition to uniquely mapped\\nreads. Use \\\"-B\\\" to set the maximum number of equally-best\\nalignments to be reported."
    maximum_number_equallybest: "Maximum number of equally-best alignments to be reported for\\na multi-mapping read. Equally-best alignments have the same\\nnumber of mis-matched bases. 1 by default."
    maximum_length_bp: "Maximum length (in bp) of indels that can be detected. 5 by\\ndefault. Indels of up to 200bp long can be detected."
    complex_indels: "Detect multiple short indels that are in close proximity\\n(they can be as close as 1bp apart from each other)."
    trim_five: "Trim off <int> number of bases from 5' end of each read. 0\\nby default."
    trim_three: "Trim off <int> number of bases from 3' end of each read. 0\\nby default."
    minimum_fragmentinsert_length: "Minimum fragment/insert length, 50bp by default."
    maximum_fragmentinsert_length: "Maximum fragment/insert length, 600bp by default."
    fffrrf_orientation_forwardreverse: "<ff:fr:rf>     Orientation of first and second reads, 'fr' by default (\\nforward/reverse)."
    number_cpu_threads: "Number of CPU threads used, 1 by default."
    rg_id: "Add read group ID to the output."
    rg: "Add <tag:value> to the read group (RG) header in the output."
    keep_read_order: "Keep order of reads in BAM output the same as that in the\\ninput file. Reads from the same pair are always placed next\\nto each other no matter this option is specified or not."
    sort_reads_by_coordinates: "location-sorted reads. This option is\\napplicable for BAM output only. A BAI index file is also\\ngenerated for each BAM file so the BAM files can be directly\\nloaded into a genome browser."
    convert_colorspace_read: "Convert color-space read bases to base-space read bases in\\nthe mapping output. Note that read mapping is performed at\\ncolor-space."
    dp_gap_open: "Penalty for gap opening in short indel detection. -1 by"
    sv: "Detect structural variants (eg. long indel, inversion,\\nduplication and translocation) and report breakpoints. Refer\\nto Users Guide for breakpoint reporting."
    name_annotation_file: "Name of an annotation file (gzipped file is accepted).\\nGTF/GFF format by default. See -F option for more format\\ninformation."
    specify_format_provided: "Specify format of the provided annotation file. Acceptable\\nformats include 'GTF' (or compatible GFF format) and\\n'SAF'. 'GTF' by default. For SAF format, please refer to\\nUsers Guide."
    provide_alias_file: "Provide a chromosome name alias file to match chr names in\\nannotation with those in the reads. This should be a two-\\ncolumn comma-delimited text file. Its first column should\\ninclude chr names in the annotation and its second column\\nshould include chr names in the index. Chr names are case\\nsensitive. No column header should be included in the\\nfile."
    gtf_feature: "Specify feature type in GTF annotation. 'exon'\\nby default. Features used for read counting will be\\nextracted from annotation using the provided value."
    gt_fattr: "Specify attribute type in GTF annotation. 'gene_id'\\nby default. Meta-features used for read counting will be\\nextracted from annotation using the provided value."
    output_version_program: "Output version of the program."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_sort_reads_by_coordinates = "${in_sort_reads_by_coordinates}"
  }
}
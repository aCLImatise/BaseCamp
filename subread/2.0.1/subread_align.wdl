version 1.0

task SubreadAlign {
  input {
    String? base_name_index
    String? name_input_read
    Int? type_input_sequencing
    String? name_output_file
    String? name_typically_containing
    Boolean? sam_input
    Boolean? bam_input
    Boolean? sam_output
    Boolean? offset_value_added
    Int? number_selected_subreads
    Int? consensus_threshold_reporting
    Int? consensus_threshold_non
    Int? maximum_number_mismatched
    Boolean? multi_mapping
    Int? maximum_number_equallybest
    Int? maximum_length_bp
    Boolean? complex_indels
    Int? trim_five
    Int? trim_three
    Int? minimum_fragmentinsert_length
    Int? maximum_fragmentinsert_length
    Boolean? fffrrf_orientation_first
    Int? number_cpu_used
    String? rg_id
    String? rg
    Boolean? convert_colorspace_read
    Int? dp_match
    Boolean? sv
    Boolean? output_version_program
  }
  command <<<
    subread-align \
      ~{if defined(base_name_index) then ("-i " +  '"' + base_name_index + '"') else ""} \
      ~{if defined(name_input_read) then ("-r " +  '"' + name_input_read + '"') else ""} \
      ~{if defined(type_input_sequencing) then ("-t " +  '"' + type_input_sequencing + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_typically_containing) then ("-R " +  '"' + name_typically_containing + '"') else ""} \
      ~{true="--SAMinput" false="" sam_input} \
      ~{true="--BAMinput" false="" bam_input} \
      ~{true="--SAMoutput" false="" sam_output} \
      ~{true="-P" false="" offset_value_added} \
      ~{if defined(number_selected_subreads) then ("-n " +  '"' + number_selected_subreads + '"') else ""} \
      ~{if defined(consensus_threshold_reporting) then ("-m " +  '"' + consensus_threshold_reporting + '"') else ""} \
      ~{if defined(consensus_threshold_non) then ("-p " +  '"' + consensus_threshold_non + '"') else ""} \
      ~{if defined(maximum_number_mismatched) then ("-M " +  '"' + maximum_number_mismatched + '"') else ""} \
      ~{true="--multiMapping" false="" multi_mapping} \
      ~{if defined(maximum_number_equallybest) then ("-B " +  '"' + maximum_number_equallybest + '"') else ""} \
      ~{if defined(maximum_length_bp) then ("-I " +  '"' + maximum_length_bp + '"') else ""} \
      ~{true="--complexIndels" false="" complex_indels} \
      ~{if defined(trim_five) then ("--trim5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""} \
      ~{if defined(minimum_fragmentinsert_length) then ("-d " +  '"' + minimum_fragmentinsert_length + '"') else ""} \
      ~{if defined(maximum_fragmentinsert_length) then ("-D " +  '"' + maximum_fragmentinsert_length + '"') else ""} \
      ~{true="-S" false="" fffrrf_orientation_first} \
      ~{if defined(number_cpu_used) then ("-T " +  '"' + number_cpu_used + '"') else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{true="-b" false="" convert_colorspace_read} \
      ~{if defined(dp_match) then ("--DPMatch " +  '"' + dp_match + '"') else ""} \
      ~{true="--sv" false="" sv} \
      ~{true="-v" false="" output_version_program}
  >>>
  parameter_meta {
    base_name_index: "Base name of the index."
    name_input_read: "Name of an input read file. If paired-end, this should be the first read file (typically containing \"R1\"in the file name) and the second should be provided via \"-R\". Acceptable formats include gzipped FASTQ, FASTQ, gzipped FASTA and FASTA. These formats are identified automatically."
    type_input_sequencing: "Type of input sequencing data. Its values include 0: RNA-seq data 1: genomic DNA-seq data."
    name_output_file: "Name of an output file. By default, the output is in BAM format. Omitting this option makes the output be written to STDOUT."
    name_typically_containing: "Name of the second read file in paired-end data (typically containing \"R2\" the file name)."
    sam_input: "Input reads are in SAM format."
    bam_input: "Input reads are in BAM format."
    sam_output: "Save mapping results in SAM format."
    offset_value_added: "<3:6>          Offset value added to the Phred quality score of each read base. '3' for phred+33 and '6' for phred+64. '3' by default."
    number_selected_subreads: "Number of selected subreads, 10 by default."
    consensus_threshold_reporting: "Consensus threshold for reporting a hit (minimal number of subreads that map in consensus) . If paired-end, this gives the consensus threshold for the anchor read (anchor read receives more votes than the other read in the same pair). 3 by default"
    consensus_threshold_non: "Consensus threshold for the non- anchor read in a pair. 1 by default."
    maximum_number_mismatched: "Maximum number of mis-matched bases allowed in each reported alignment. 3 by default. Mis-matched bases found in soft- clipped bases are not counted."
    multi_mapping: "Report multi-mapping reads in addition to uniquely mapped reads. Use \"-B\" to set the maximum number of equally-best alignments to be reported."
    maximum_number_equallybest: "Maximum number of equally-best alignments to be reported for a multi-mapping read. Equally-best alignments have the same number of mis-matched bases. 1 by default."
    maximum_length_bp: "Maximum length (in bp) of indels that can be detected. 5 by default. Indels of up to 200bp long can be detected."
    complex_indels: "Detect multiple short indels that are in close proximity (they can be as close as 1bp apart from each other)."
    trim_five: "Trim off <int> number of bases from 5' end of each read. 0 by default."
    trim_three: "Trim off <int> number of bases from 3' end of each read. 0 by default."
    minimum_fragmentinsert_length: "Minimum fragment/insert length, 50bp by default."
    maximum_fragmentinsert_length: "Maximum fragment/insert length, 600bp by default."
    fffrrf_orientation_first: "<ff:fr:rf>     Orientation of first and second reads, 'fr' by default ( forward/reverse)."
    number_cpu_used: "Number of CPU threads used, 1 by default."
    rg_id: "Add read group ID to the output."
    rg: "Add <tag:value> to the read group (RG) header in the output."
    convert_colorspace_read: "Convert color-space read bases to base-space read bases in the mapping output. Note that read mapping is performed at color-space."
    dp_match: "Score for matched bases in short indel detection. 2 by default."
    sv: "Detect structural variants (eg. long indel, inversion, duplication and translocation) and report breakpoints. Refer to Users Guide for breakpoint reporting."
    output_version_program: "Output version of the program."
  }
}
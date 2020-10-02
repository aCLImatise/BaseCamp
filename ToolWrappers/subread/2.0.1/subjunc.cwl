class: CommandLineTool
id: subjunc.cwl
inputs:
- id: in_base_name_index
  doc: Base name of the index.
  type: string
  inputBinding:
    prefix: -i
- id: in_name_input_read
  doc: "Name of an input read file. If paired-end, this should be\nthe first read\
    \ file (typically containing \"R1\"in the file\nname) and the second should be\
    \ provided via \"-R\".\nAcceptable formats include gzipped FASTQ, FASTQ, gzipped\n\
    FASTA and FASTA.\nThese formats are identified automatically."
  type: File
  inputBinding:
    prefix: -r
- id: in_name_output_file
  doc: "Name of an output file. By default, the output is in BAM\nformat. Omitting\
    \ this option makes the output be written to\nSTDOUT."
  type: File
  inputBinding:
    prefix: -o
- id: in_name_typicallycontaining_name
  doc: "Name of the second read file in paired-end data (typically\ncontaining \"\
    R2\" the file name)."
  type: File
  inputBinding:
    prefix: -R
- id: in_sam_input
  doc: Input reads are in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMinput
- id: in_bam_input
  doc: Input reads are in BAM format.
  type: boolean
  inputBinding:
    prefix: --BAMinput
- id: in_sam_output
  doc: Save mapping results in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMoutput
- id: in_offset_value_added
  doc: "<3:6>          Offset value added to the Phred quality score of each read\n\
    base. '3' for phred+33 and '6' for phred+64. '3' by default."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_number_selected_subreads
  doc: Number of selected subreads, 14 by default.
  type: long
  inputBinding:
    prefix: -n
- id: in_consensus_threshold_reporting
  doc: "Consensus threshold for reporting a hit (minimal number of\nsubreads that\
    \ map in consensus) . If paired-end, this gives\nthe consensus threshold for the\
    \ anchor read (anchor read\nreceives more votes than the other read in the same\
    \ pair).\n1 by default."
  type: long
  inputBinding:
    prefix: -m
- id: in_consensus_threshold_non
  doc: Consensus threshold for the non- anchor read in a pair. 1 by
  type: long
  inputBinding:
    prefix: -p
- id: in_multi_mapping
  doc: "Report multi-mapping reads in addition to uniquely mapped\nreads. Use \"-B\"\
    \ to set the maximum number of equally-best\nalignments to be reported."
  type: boolean
  inputBinding:
    prefix: --multiMapping
- id: in_maximum_number_reported
  doc: "Maximum number of equally-best alignments to be reported for\na multi-mapping\
    \ read. Equally-best alignments have the same\nnumber of mis-matched bases. 1\
    \ by default."
  type: long
  inputBinding:
    prefix: -B
- id: in_maximum_length_bp
  doc: "Maximum length (in bp) of indels that can be detected. 5 by\ndefault. Indels\
    \ of up to 200bp long can be detected."
  type: long
  inputBinding:
    prefix: -I
- id: in_complex_indels
  doc: "Detect multiple short indels that are in close proximity\n(they can be as\
    \ close as 1bp apart from each other)."
  type: boolean
  inputBinding:
    prefix: --complexIndels
- id: in_trim_five
  doc: "Trim off <int> number of bases from 5' end of each read. 0\nby default."
  type: long
  inputBinding:
    prefix: --trim5
- id: in_trim_three
  doc: "Trim off <int> number of bases from 3' end of each read. 0\nby default."
  type: long
  inputBinding:
    prefix: --trim3
- id: in_minimum_fragmentinsert_length
  doc: Minimum fragment/insert length, 50bp by default.
  type: long
  inputBinding:
    prefix: -d
- id: in_maximum_fragmentinsert_length
  doc: Maximum fragment/insert length, 600bp by default.
  type: long
  inputBinding:
    prefix: -D
- id: in_fffrrf_orientation_first
  doc: "<ff:fr:rf>     Orientation of first and second reads, 'fr' by default (\n\
    forward/reverse)."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_number_cpu_threads
  doc: Number of CPU threads used, 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: in_rg_id
  doc: Add read group ID to the output.
  type: string
  inputBinding:
    prefix: --rg-id
- id: in_rg
  doc: Add <tag:value> to the read group (RG) header in the output.
  type: string
  inputBinding:
    prefix: --rg
- id: in_keep_read_order
  doc: "Keep order of reads in BAM output the same as that in the\ninput file. Reads\
    \ from the same pair are always placed next\nto each other no matter this option\
    \ is specified or not."
  type: boolean
  inputBinding:
    prefix: --keepReadOrder
- id: in_sort_reads_by_coordinates
  doc: "location-sorted reads. This option is\napplicable for BAM output only. A BAI\
    \ index file is also\ngenerated for each BAM file so the BAM files can be directly\n\
    loaded into a genome browser."
  type: File
  inputBinding:
    prefix: --sortReadsByCoordinates
- id: in_convert_colorspace_read
  doc: "Convert color-space read bases to base-space read bases in\nthe mapping output.\
    \ Note that read mapping is performed at\ncolor-space."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_dp_gap_open
  doc: Penalty for gap opening in short indel detection. -1 by
  type: long
  inputBinding:
    prefix: --DPGapOpen
- id: in_all_junctions
  doc: "Detect exon-exon junctions (both canonical and non-canonical\njunctions) and\
    \ structural variants in RNA-seq data. Refer to\nUsers Guide for reporting of\
    \ junctions and fusions."
  type: boolean
  inputBinding:
    prefix: --allJunctions
- id: in_name_annotation_file
  doc: "Name of an annotation file (gzipped file is accepted).\nGTF/GFF format by\
    \ default. See -F option for more format\ninformation."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_specify_format_provided
  doc: "Specify format of the provided annotation file. Acceptable\nformats include\
    \ 'GTF' (or compatible GFF format) and\n'SAF'. 'GTF' by default. For SAF format,\
    \ please refer to\nUsers Guide."
  type: boolean
  inputBinding:
    prefix: -F
- id: in_provide_chromosome_name
  doc: "Provide a chromosome name alias file to match chr names in\nannotation with\
    \ those in the reads. This should be a two-\ncolumn comma-delimited text file.\
    \ Its first column should\ninclude chr names in the annotation and its second\
    \ column\nshould include chr names in the index. Chr names are case\nsensitive.\
    \ No column header should be included in the\nfile."
  type: boolean
  inputBinding:
    prefix: -A
- id: in_gtf_feature
  doc: "Specify feature type in GTF annotation. 'exon'\nby default. Features used\
    \ for read counting will be\nextracted from annotation using the provided value."
  type: string
  inputBinding:
    prefix: --gtfFeature
- id: in_gt_fattr
  doc: "Specify attribute type in GTF annotation. 'gene_id'\nby default. Meta-features\
    \ used for read counting will be\nextracted from annotation using the provided\
    \ value."
  type: string
  inputBinding:
    prefix: --gtfAttr
- id: in_output_version_program
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: "Name of an output file. By default, the output is in BAM\nformat. Omitting\
    \ this option makes the output be written to\nSTDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
- id: out_sort_reads_by_coordinates
  doc: "location-sorted reads. This option is\napplicable for BAM output only. A BAI\
    \ index file is also\ngenerated for each BAM file so the BAM files can be directly\n\
    loaded into a genome browser."
  type: File
  outputBinding:
    glob: $(inputs.in_sort_reads_by_coordinates)
cwlVersion: v1.1
baseCommand:
- subjunc

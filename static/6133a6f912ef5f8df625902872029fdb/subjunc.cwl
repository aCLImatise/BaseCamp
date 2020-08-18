class: CommandLineTool
id: ../../../subjunc.cwl
inputs:
- id: base_name_index
  doc: Base name of the index.
  type: string
  inputBinding:
    prefix: -i
- id: name_input_read
  doc: Name of an input read file. If paired-end, this should be the first read file
    (typically containing "R1"in the file name) and the second should be provided
    via "-R". Acceptable formats include gzipped FASTQ, FASTQ, gzipped FASTA and FASTA.
    These formats are identified automatically.
  type: string
  inputBinding:
    prefix: -r
- id: name_output_file
  doc: Name of an output file. By default, the output is in BAM format. Omitting this
    option makes the output be written to STDOUT.
  type: string
  inputBinding:
    prefix: -o
- id: name_typically_containing
  doc: Name of the second read file in paired-end data (typically containing "R2"
    the file name).
  type: string
  inputBinding:
    prefix: -R
- id: sam_input
  doc: Input reads are in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMinput
- id: bam_input
  doc: Input reads are in BAM format.
  type: boolean
  inputBinding:
    prefix: --BAMinput
- id: sam_output
  doc: Save mapping results in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMoutput
- id: offset_value_added
  doc: <3:6>          Offset value added to the Phred quality score of each read base.
    '3' for phred+33 and '6' for phred+64. '3' by default.
  type: boolean
  inputBinding:
    prefix: -P
- id: number_selected_subreads
  doc: Number of selected subreads, 14 by default.
  type: long
  inputBinding:
    prefix: -n
- id: consensus_threshold_reporting
  doc: Consensus threshold for reporting a hit (minimal number of subreads that map
    in consensus) . If paired-end, this gives the consensus threshold for the anchor
    read (anchor read receives more votes than the other read in the same pair). 1
    by default.
  type: long
  inputBinding:
    prefix: -m
- id: consensus_threshold_non
  doc: Consensus threshold for the non- anchor read in a pair. 1 by default.
  type: long
  inputBinding:
    prefix: -p
- id: maximum_number_mismatched
  doc: Maximum number of mis-matched bases allowed in each reported alignment. 3 by
    default. Mis-matched bases found in soft- clipped bases are not counted.
  type: long
  inputBinding:
    prefix: -M
- id: multi_mapping
  doc: Report multi-mapping reads in addition to uniquely mapped reads. Use "-B" to
    set the maximum number of equally-best alignments to be reported.
  type: boolean
  inputBinding:
    prefix: --multiMapping
- id: maximum_number_equallybest
  doc: Maximum number of equally-best alignments to be reported for a multi-mapping
    read. Equally-best alignments have the same number of mis-matched bases. 1 by
    default.
  type: long
  inputBinding:
    prefix: -B
- id: maximum_length_bp
  doc: Maximum length (in bp) of indels that can be detected. 5 by default. Indels
    of up to 200bp long can be detected.
  type: long
  inputBinding:
    prefix: -I
- id: complex_indels
  doc: Detect multiple short indels that are in close proximity (they can be as close
    as 1bp apart from each other).
  type: boolean
  inputBinding:
    prefix: --complexIndels
- id: trim_five
  doc: Trim off <int> number of bases from 5' end of each read. 0 by default.
  type: long
  inputBinding:
    prefix: --trim5
- id: trim_three
  doc: Trim off <int> number of bases from 3' end of each read. 0 by default.
  type: long
  inputBinding:
    prefix: --trim3
- id: minimum_fragmentinsert_length
  doc: Minimum fragment/insert length, 50bp by default.
  type: long
  inputBinding:
    prefix: -d
- id: maximum_fragmentinsert_length
  doc: Maximum fragment/insert length, 600bp by default.
  type: long
  inputBinding:
    prefix: -D
- id: fffrrf_orientation_first
  doc: <ff:fr:rf>     Orientation of first and second reads, 'fr' by default ( forward/reverse).
  type: boolean
  inputBinding:
    prefix: -S
- id: number_cpu_used
  doc: Number of CPU threads used, 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: rg_id
  doc: Add read group ID to the output.
  type: string
  inputBinding:
    prefix: --rg-id
- id: rg
  doc: Add <tag:value> to the read group (RG) header in the output.
  type: string
  inputBinding:
    prefix: --rg
- id: convert_colorspace_read
  doc: Convert color-space read bases to base-space read bases in the mapping output.
    Note that read mapping is performed at color-space.
  type: boolean
  inputBinding:
    prefix: -b
- id: dp_match
  doc: Score for matched bases in short indel detection. 2 by default.
  type: long
  inputBinding:
    prefix: --DPMatch
- id: all_junctions
  doc: Detect exon-exon junctions (both canonical and non-canonical junctions) and
    structural variants in RNA-seq data. Refer to Users Guide for reporting of junctions
    and fusions.
  type: boolean
  inputBinding:
    prefix: --allJunctions
- id: output_version_program
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- subjunc

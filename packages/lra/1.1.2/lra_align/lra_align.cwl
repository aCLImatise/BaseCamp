class: CommandLineTool
id: lra_align.cwl
inputs:
- id: in_ccs
  doc: (flag) Align CCS reads.
  type: boolean?
  inputBinding:
    prefix: -CCS
- id: in_clr
  doc: (flag) Align CLR reads.
  type: boolean?
  inputBinding:
    prefix: -CLR
- id: in_ont
  doc: (flag) Align Nanopore reads.
  type: boolean?
  inputBinding:
    prefix: -ONT
- id: in_contig
  doc: (flag) Align large contigs.
  type: boolean?
  inputBinding:
    prefix: -CONTIG
- id: in_print_alignment_format
  doc: "[FMT]   Print alignment format FMT='b' bed, 's' sam, 'p' PAF, 'pc' PAF with\
    \ cigar, 'a' pairwise alignment."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_use_hardclipping_sam
  doc: Use hard-clipping for SAM output format
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_flag
  doc: F(int)  Skip reads with any flags in F set (bam input only).
  type: boolean?
  inputBinding:
    prefix: -Flag
- id: in_nint_use_threads
  doc: n(int)   Use n threads (1)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_flag_query_positions
  doc: (flag)  Query all positions in a read, not just minimizers.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_sv
  doc: (int) (path to svsig file)  Print sv signatures for each alignment with length
    above the given threshold (DEFAULT:25). And the path of output svsig file
  type: boolean?
  inputBinding:
    prefix: -SV
- id: in_at
  doc: (float) a float in (0, 1), Threshold to decide secondary alignments based on
    chaining value (DEFAULT:0.7).
  type: boolean?
  inputBinding:
    prefix: -at
- id: in_start
  doc: (int)   Start aligning at this read.
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_stride
  doc: (int)   Read stride (for multi-job alignment of the same file).
  type: boolean?
  inputBinding:
    prefix: --stride
- id: in_flag_enable_dotplot
  doc: (flag)  Enable dotPlot
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_pal
  doc: (int) Print at most how many alignments for one read
  type: boolean?
  inputBinding:
    prefix: -PAl
- id: in_al
  doc: (int) Compute at most how many alignments for one read
  type: boolean?
  inputBinding:
    prefix: -Al
- id: in_pass_through
  doc: auxilary tags from the input unaligned bam to the output
  type: string?
  inputBinding:
    prefix: --passthrough
- id: in_genome_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads_two
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lra:1.1.2--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- lra
- align

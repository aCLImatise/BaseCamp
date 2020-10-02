class: CommandLineTool
id: sam_stats.cwl
inputs:
- id: in_keep_track_multiple
  doc: Keep track of multiple alignments
  type: boolean
  inputBinding:
    prefix: -D
- id: in_output_prefix_enabling
  doc: Output prefix enabling extended output (see below)
  type: string
  inputBinding:
    prefix: -O
- id: in_coveragerna_output_coverage
  doc: Coverage/RNA output (coverage, 3' bias, etc, implies -A)
  type: long
  inputBinding:
    prefix: -R
- id: in_report_chr_sigs
  doc: Report all chr sigs, even if there are more than 1000
  type: boolean
  inputBinding:
    prefix: -A
- id: in_number_reads_sample
  doc: Number of reads to sample for per-base stats (1M)
  type: long
  inputBinding:
    prefix: -b
- id: in_size_of_asciisignature
  doc: Size of ascii-signature (30)
  type: long
  inputBinding:
    prefix: -S
- id: in_file_extension_handling
  doc: File extension for handling multiple files (stats)
  type: File
  inputBinding:
    prefix: -x
- id: in_only_overwrite_requires
  doc: Only overwrite if newer (requires -x, or multiple files)
  type: boolean
  inputBinding:
    prefix: -M
- id: in_input_bam_bother
  doc: Input is bam, don't bother looking at magic
  type: boolean
  inputBinding:
    prefix: -B
- id: in_fail_when_entries
  doc: Don't fail when zero entries in sam
  type: boolean
  inputBinding:
    prefix: -z
- id: in_reads
  doc: ': # of entries in the sam file, might not be # reads'
  type: string
  inputBinding:
    position: 0
- id: in_phred
  doc: ': phred scale used'
  type: string
  inputBinding:
    position: 1
- id: in_b_size
  doc: ': # reads used for qual stats'
  type: string
  inputBinding:
    position: 2
- id: in_forward
  doc: ': number of forward-aligned reads'
  type: string
  inputBinding:
    position: 0
- id: in_reverse
  doc: ': number of reverse-aligned reads'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sam-stats

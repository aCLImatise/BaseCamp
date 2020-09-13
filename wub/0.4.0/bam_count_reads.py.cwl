class: CommandLineTool
id: ../../../bam_count_reads.py.cwl
inputs:
- id: in_minimum_mapping_quality
  doc: Minimum mapping quality (0).
  type: long
  inputBinding:
    prefix: -a
- id: in_input_format_bam
  doc: Input format (BAM).
  type: string
  inputBinding:
    prefix: -f
- id: in_reference_fasta_gc
  doc: "Reference fasta. GC content and length columns are added\nif present (None)."
  type: long
  inputBinding:
    prefix: -z
- id: in_include_word_frequencies
  doc: "Include word frequencies of specifed length in output\n(None)."
  type: long
  inputBinding:
    prefix: -k
- id: in_include_mean_mapped
  doc: "Include mean GC content of reads mapped to each reference\n(False)."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_save_pickled_results
  doc: Save pickled results in this file (None).
  type: File
  inputBinding:
    prefix: -p
- id: in_save_results_tsv
  doc: "Save results in tsv format in this file\n(bam_count_reads.tsv)."
  type: File
  inputBinding:
    prefix: -t
- id: in_quiet_print_false
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_count_reads_read
  doc: "Count reads from SAM stream in stdin. Only read count\nfields are written.\
    \ Header required! (False)."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_yield_counts_mapped
  doc: "Yield counts after every -Fth mapped record when doing\nonline counting (100).\n"
  type: long
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_count_reads.py

class: CommandLineTool
id: nudup.py.cwl
inputs:
- id: in_paired_end
  doc: "use paired end deduping with template. SAM/BAM\nalignment must contain paired\
    \ end reads. Degenerate\nread pairs (alignments for one read of pair) will be\n\
    discarded."
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_readfq_fastq_file
  doc: "|READ.fq   FASTQ file containing the molecular tag sequence for\neach read\
    \ name in the corresponding SAM/BAM file\n(required only for CASE 1 detailed above)"
  type: File
  inputBinding:
    prefix: -f
- id: in_out
  doc: "prefix of output file paths for sorted BAMs (default\nwill create prefix.sorted.markdup.bam,\n\
    prefix.sorted.dedup.bam, prefix_dup_log.txt)"
  type: File
  inputBinding:
    prefix: --out
- id: in_start
  doc: "position in index read where molecular tag sequence\nbegins. This should be\
    \ a 1-based value that counts in\nfrom the 3' END of the read. (default = 6)"
  type: long
  inputBinding:
    prefix: --start
- id: in_length
  doc: length of molecular tag sequence (default = 6)
  type: long
  inputBinding:
    prefix: --length
- id: in_directory_reading_writing
  doc: "directory for reading and writing to temporary files\nand named pipes (default:\
    \ /tmp)"
  type: Directory
  inputBinding:
    prefix: -T
- id: in_old_sam_tools
  doc: "required for compatibility with samtools sort style in\nsamtools versions\
    \ <=0.1.19"
  type: boolean
  inputBinding:
    prefix: --old-samtools
- id: in_rmd_up_only
  doc: required for only outputting duplicates removed file
  type: boolean
  inputBinding:
    prefix: --rmdup-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "prefix of output file paths for sorted BAMs (default\nwill create prefix.sorted.markdup.bam,\n\
    prefix.sorted.dedup.bam, prefix_dup_log.txt)"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- nudup.py

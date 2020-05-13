class: CommandLineTool
id: nudup.py.cwl
inputs:
- id: f
  doc: '|READ.fq   FASTQ file containing the molecular tag sequence for each read
    name in the corresponding SAM/BAM file (required only for CASE 1 detailed above)'
  type: string
  inputBinding:
    prefix: -f
- id: out
  doc: prefix of output file paths for sorted BAMs (default will create prefix.sorted.markdup.bam,
    prefix.sorted.dedup.bam, prefix_dup_log.txt)
  type: string
  inputBinding:
    prefix: --out
- id: start
  doc: position in index read where molecular tag sequence begins. This should be
    a 1-based value that counts in from the 3' END of the read. (default = 6)
  type: string
  inputBinding:
    prefix: --start
- id: length
  doc: length of molecular tag sequence (default = 6)
  type: long
  inputBinding:
    prefix: --length
- id: t
  doc: 'directory for reading and writing to temporary files and named pipes (default:
    /tmp)'
  type: string
  inputBinding:
    prefix: -T
- id: old_sam_tools
  doc: required for compatibility with samtools sort style in samtools versions <=0.1.19
  type: boolean
  inputBinding:
    prefix: --old-samtools
- id: rmd_up_only
  doc: required for only outputting duplicates removed file
  type: boolean
  inputBinding:
    prefix: --rmdup-only
outputs: []
cwlVersion: v1.1
baseCommand:
- nudup.py

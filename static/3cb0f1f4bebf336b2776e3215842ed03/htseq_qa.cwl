class: CommandLineTool
id: htseq_qa.cwl
inputs:
- id: read_filename
  doc: The file to count reads in (SAM/BAM or Fastq)
  type: string
  inputBinding:
    position: 0
- id: type
  doc: 'type of read_file (one of: sam [default], bam, solexa- export, fastq, solexa-fastq)'
  type: string
  inputBinding:
    prefix: --type
- id: outfile
  doc: output filename (default is <read_file>.pdf)
  type: string
  inputBinding:
    prefix: --outfile
- id: read_length
  doc: the maximum read length (when not specified, the script guesses from the file
  type: string
  inputBinding:
    prefix: --readlength
- id: gamma
  doc: the gamma factor for the contrast adjustment of the quality score plot
  type: string
  inputBinding:
    prefix: --gamma
- id: no_split
  doc: do not split reads in unaligned and aligned ones
  type: boolean
  inputBinding:
    prefix: --nosplit
- id: max_qual
  doc: 'the maximum quality score that appears in the data (default: 41)'
  type: long
  inputBinding:
    prefix: --maxqual
- id: primary_only
  doc: For SAM/BAM input files, ignore alignments that are not primary. This only
    affects 'multimapper' reads that align to several regions in the genome. By choosing
    this option, each read will only count as one; without this option, each of its
    alignments counts as one.
  type: boolean
  inputBinding:
    prefix: --primary-only
- id: max_records
  doc: Limit the analysis to the first N reads/alignments.
  type: long
  inputBinding:
    prefix: --max-records
outputs: []
cwlVersion: v1.1
baseCommand:
- htseq-qa

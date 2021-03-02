class: CommandLineTool
id: htseq_qa.cwl
inputs:
- id: in_type
  doc: "type of read_file (one of: sam [default], bam, solexa-\nexport, fastq, solexa-fastq)"
  type: string?
  inputBinding:
    prefix: --type
- id: in_outfile
  doc: output filename (default is <read_file>.pdf)
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_read_length
  doc: "the maximum read length (when not specified, the\nscript guesses from the\
    \ file"
  type: long?
  inputBinding:
    prefix: --readlength
- id: in_gamma
  doc: "the gamma factor for the contrast adjustment of the\nquality score plot"
  type: string?
  inputBinding:
    prefix: --gamma
- id: in_no_split
  doc: do not split reads in unaligned and aligned ones
  type: boolean?
  inputBinding:
    prefix: --nosplit
- id: in_max_qual
  doc: "the maximum quality score that appears in the data\n(default: 41)"
  type: long?
  inputBinding:
    prefix: --maxqual
- id: in_primary_only
  doc: "For SAM/BAM input files, ignore alignments that are\nnot primary. This only\
    \ affects 'multimapper' reads\nthat align to several regions in the genome. By\n\
    choosing this option, each read will only count as\none; without this option,\
    \ each of its alignments\ncounts as one."
  type: boolean?
  inputBinding:
    prefix: --primary-only
- id: in_max_records
  doc: "Limit the analysis to the first N reads/alignments.\n"
  type: long?
  inputBinding:
    prefix: --max-records
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output filename (default is <read_file>.pdf)
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/htseq:0.13.5--py37h0498b6d_0
cwlVersion: v1.1
baseCommand:
- htseq-qa

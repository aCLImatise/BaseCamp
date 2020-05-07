class: CommandLineTool
id: SNPsplit.cwl
inputs:
- id: snp_id
  doc: Chromosome  Position    Strand   Ref/SNP
  type: string
  inputBinding:
    position: 0
- id: conflicting
  doc: "/--weird  Reads or read pairs that were classified as 'Conflicting' (XX:Z:CF)\
    \ will be written to an extra file (ending in .conflicting.bam) instead of being\
    \ simply skipped. Reads may be classified as 'Conflicting' if a single read contains\
    \ SNP information for both genomes at the same time, or if the SNP position was\
    \ deleted from the read. Read-pairs are considered 'Conflicting' if either read\
    \ is was tagged with the XX:Z:CF flag. Default: OFF."
  type: boolean
  inputBinding:
    prefix: --conflicting
- id: sam
  doc: The output will be written out in SAM format instead of BAM (default). SNPsplit
    will attempt to use the path to Samtools that was specified with --samtools_path,
    or, if it hasn't been specified, attempt to find Samtools in the PATH environment.
    If no installation of Samtools can be found, the SAM output will be compressed
    with GZIP instead (yielding a .sam.gz output file).
  type: boolean
  inputBinding:
    prefix: --sam
outputs: []
cwlVersion: v1.1
baseCommand:
- SNPsplit

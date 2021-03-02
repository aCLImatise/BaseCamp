class: CommandLineTool
id: tag2sort.cwl
inputs:
- id: in_paired
  doc: 'Paired-end mode. (Default: OFF).'
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_outdir
  doc: "Write all output files into this directory. By default the output files will\
    \ be written into\nthe same folder as the input file(s)."
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_singletons
  doc: "If the allele-tagged paired-end file also contains singleton alignments (which\
    \ is the\ndefault for e.g. TopHat), these will be written out to extra files (ending\
    \ in _st.bam)\ninstead of writing everything to combined paired-end and singleton\
    \ files. Default: OFF."
  type: File?
  inputBinding:
    prefix: --singletons
- id: in_hic
  doc: "Assumes Hi-C data processed with HiCUP (www.bioinformatics.babraham.ac.uk/projects/hicup/)\n\
    as input, i.e. the input BAM file is paired-end and Reads 1 and 2 follow each\
    \ other. Thus,\nthis option also sets the flags --paired and --no_sort. Default:\
    \ OFF."
  type: boolean?
  inputBinding:
    prefix: --hic
- id: in_sam_tools_path
  doc: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not\
    \ need to\nbe specified explicitly if Samtools is in the PATH already."
  type: boolean?
  inputBinding:
    prefix: --samtools_path
- id: in_conflicting
  doc: "Reads or read pairs that were classified as 'Conflicting' (XX:Z:CF) will be\
    \ written to\nan extra file (ending in .conflicting.bam) instead of being simply\
    \ skipped. Reads may be\nclassified as 'Conflicting' if a single read contains\
    \ SNP information for both genomes at\nthe same time, or if the SNP position was\
    \ deleted from the read. Read-pairs are considered\n'Conflicting' if either read\
    \ is was tagged with the XX:Z:CF flag. Default: OFF."
  type: boolean?
  inputBinding:
    prefix: --conflicting
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_singletons
  doc: "If the allele-tagged paired-end file also contains singleton alignments (which\
    \ is the\ndefault for e.g. TopHat), these will be written out to extra files (ending\
    \ in _st.bam)\ninstead of writing everything to combined paired-end and singleton\
    \ files. Default: OFF."
  type: File?
  outputBinding:
    glob: $(inputs.in_singletons)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snpsplit:0.4.0--0
cwlVersion: v1.1
baseCommand:
- tag2sort

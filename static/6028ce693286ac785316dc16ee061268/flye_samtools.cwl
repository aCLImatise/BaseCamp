class: CommandLineTool
id: flye_samtools.cwl
inputs:
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: indexing
  doc: dict           create a sequence dictionary file faidx          index/extract
    FASTA fqidx          index/extract FASTQ index          index alignment
  type: boolean
  inputBinding:
    prefix: -- Indexing
- id: editing
  doc: calmd          recalculate MD/NM tags and '=' bases fixmate        fix mate
    information reheader       replace BAM header targetcut      cut fosmid regions
    (for fosmid pool only) addreplacerg   adds or replaces RG tags markdup        mark
    duplicates
  type: boolean
  inputBinding:
    prefix: -- Editing
- id: file
  doc: collate        shuffle and group alignments by name cat            concatenate
    BAMs merge          merge sorted alignments mpileup        multi-way pileup sort           sort
    alignment file split          splits a file by read group quickcheck     quickly
    check if SAM/BAM/CRAM file appears intact fastq          converts a BAM to a FASTQ
    fasta          converts a BAM to a FASTA
  type: string
  inputBinding:
    prefix: -- File
- id: statistics
  doc: bedcov         read depth per BED region depth          compute the depth flagstat       simple
    stats idxstats       BAM index stats phase          phase heterozygotes stats          generate
    stats (former bamcheck)
  type: boolean
  inputBinding:
    prefix: -- Statistics
- id: viewing
  doc: flags          explain BAM flags tview          text alignment viewer view           SAM<->BAM<->CRAM
    conversion depad          convert padded BAM to unpadded BAM
  type: boolean
  inputBinding:
    prefix: -- Viewing
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools

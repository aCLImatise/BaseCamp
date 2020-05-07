class: CommandLineTool
id: biscuit.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read
  doc: index         index reference genome sequences in the FASTA format align         align
    bisulfite treated short reads using adapted BWA-mem algorithm
  type: string
  inputBinding:
    prefix: -- Read
- id: bam
  doc: tview         text alignment viewer with bisulfite coloring bsstrand      validate/correct
    bisulfite conversion strand label (YD tag) bsconv        summarize/filter reads
    by bisulfite conversion (ZN tag) cinread       print cytosine-read pair in a long
    form.
  type: string
  inputBinding:
    prefix: -- BAM
- id: base
  doc: pileup        pileup cytosine and mutations. vcf2bed       convert VCF to bed
    graph. mergecg       merge C and G in CpG context.
  type: string
  inputBinding:
    prefix: -- Base
- id: epi_reads
  doc: epiread       convert bam to epiread format rectangle     convert epiread to
    rectangle format asm           test allele specific methylation
  type: boolean
  inputBinding:
    prefix: -- Epireads
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit

class: CommandLineTool
id: SomaticQC.cwl
inputs:
- id: tumor_bam
  doc: Input tumor BAM file.
  type: File
  inputBinding:
    prefix: -tumor_bam
- id: normal_bam
  doc: Input normal BAM file.
  type: File
  inputBinding:
    prefix: -normal_bam
- id: somatic_vcf
  doc: Input somatic VCF file.
  type: File
  inputBinding:
    prefix: -somatic_vcf
- id: out
  doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: links
  doc: "Files that appear in the link part of the qcML file. Default value: ''"
  type: File
  inputBinding:
    prefix: -links
- id: target_bed
  doc: "Target file used for tumor and normal experiment. Default value: ''"
  type: File
  inputBinding:
    prefix: -target_bed
- id: target_exons
  doc: "BED file containing target exons, neccessary for TMB calculation. Please provide\
    \ a file that contains the coordinates of all exons in the reference genome. Default\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -target_exons
- id: blacklist
  doc: "BED file containing regions which are ignored in TMB calculation. Default\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -blacklist
- id: tsg_bed
  doc: "BED file containing regions of tumor suppressor genes for TMB calculation.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -tsg_bed
- id: ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: skip_plots
  doc: "Skip plots (intended to increase speed of automated tests). Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -skip_plots
- id: build
  doc: "Genome build used to generate the input. Default value: 'hg19' Valid: 'hg19,hg38'"
  type: string
  inputBinding:
    prefix: -build
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- SomaticQC

#!/usr/bin/env cwl-runner

baseCommand:
- SomaticQC
class: CommandLineTool
cwlVersion: v1.0
id: somaticqc
inputs:
- doc: Input tumor BAM file.
  id: tumor_bam
  inputBinding:
    prefix: -tumor_bam
  type: File
- doc: Input normal BAM file.
  id: normal_bam
  inputBinding:
    prefix: -normal_bam
  type: File
- doc: Input somatic VCF file.
  id: somatic_vcf
  inputBinding:
    prefix: -somatic_vcf
  type: File
- doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Files that appear in the link part of the qcML file. Default value: ''"
  id: links
  inputBinding:
    prefix: -links
  type: File
- doc: "Target file used for tumor and normal experiment. Default value: ''"
  id: target_bed
  inputBinding:
    prefix: -target_bed
  type: File
- doc: "BED file containing target exons, neccessary for TMB calculation. Please provide\
    \ a file that contains the coordinates of all exons in the reference genome. Default\
    \ value: ''"
  id: target_exons
  inputBinding:
    prefix: -target_exons
  type: File
- doc: "BED file containing regions which are ignored in TMB calculation. Default\
    \ value: ''"
  id: blacklist
  inputBinding:
    prefix: -blacklist
  type: File
- doc: "BED file containing regions of tumor suppressor genes for TMB calculation.\
    \ Default value: ''"
  id: tsg_bed
  inputBinding:
    prefix: -tsg_bed
  type: File
- doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
  type: File
- doc: "Skip plots (intended to increase speed of automated tests). Default value:\
    \ 'false'"
  id: skip_plots
  inputBinding:
    prefix: -skip_plots
  type: boolean
- doc: "Genome build used to generate the input. Default value: 'hg19' Valid: 'hg19,hg38'"
  id: build
  inputBinding:
    prefix: -build
  type: string
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean

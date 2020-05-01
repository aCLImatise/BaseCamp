#!/usr/bin/env cwl-runner

baseCommand:
- VariantAnnotateFrequency
class: CommandLineTool
cwlVersion: v1.0
id: variantannotatefrequency
inputs:
- doc: Input variant list to annotate in VCF or GSvar format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Input BAM file.
  id: bam
  inputBinding:
    prefix: -bam
  type: File
- doc: Output variant list file name (VCF or GSvar).
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Annotate an additional column containing the depth. Default value: 'false'"
  id: depth
  inputBinding:
    prefix: -depth
  type: boolean
- doc: "Annotate an additional column containing the percentage of mapq 0 reads. Default\
    \ value: 'false'"
  id: mapq0
  inputBinding:
    prefix: -mapq0
  type: boolean
- doc: "Column header prefix in output file. Default value: ''"
  id: name
  inputBinding:
    prefix: -name
  type: string
- doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
  type: File
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

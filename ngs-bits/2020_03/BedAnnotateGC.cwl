class: CommandLineTool
id: BedAnnotateGC.cwl
inputs:
- id: in
  doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: ref
  doc: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: extend
  doc: "Bases to extend around the input region for calculating the GC content. Default\
    \ value: '0'"
  type: long
  inputBinding:
    prefix: -extend
- id: clear
  doc: "Clear all annotations present in the input file. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -clear
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
- BedAnnotateGC

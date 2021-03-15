class: CommandLineTool
id: BedAnnotateGC.cwl
inputs:
- id: in_in
  doc: "Input BED file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ref
  doc: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_extend
  doc: "Bases to extend around the input region for calculating the GC content.\n\
    Default value: '0'"
  type: long?
  inputBinding:
    prefix: -extend
- id: in_clear
  doc: "Clear all annotations present in the input file.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -clear
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- BedAnnotateGC

class: CommandLineTool
id: flippyr.cwl
inputs:
- id: in_silent
  doc: Supress output to stdout.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_plink
  doc: Run the plink command.
  type: boolean?
  inputBinding:
    prefix: --plink
- id: in_plink_mem
  doc: Set the memory limit for plink.
  type: string?
  inputBinding:
    prefix: --plinkMem
- id: in_output_prefix
  doc: Change output file prefix.
  type: File?
  inputBinding:
    prefix: --outputPrefix
- id: in_output_suffix
  doc: Change output file suffix for plink file.
  type: File?
  inputBinding:
    prefix: --outputSuffix
- id: in_keep_multi_allelic
  doc: Do not delete multiallelic sites.
  type: boolean?
  inputBinding:
    prefix: --keepMultiallelic
- id: in_keep_indels
  doc: Do not delete insertions/deletions.
  type: boolean?
  inputBinding:
    prefix: --keepIndels
- id: in_fast_a
  doc: Fasta file containing all chromosomes in the plink
  type: string
  inputBinding:
    position: 0
- id: in_fileset
  doc: bim                   .bim file from binary plink fileset.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: Change output file prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
- id: out_output_suffix
  doc: Change output file suffix for plink file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_suffix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flippyr:0.4.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- flippyr

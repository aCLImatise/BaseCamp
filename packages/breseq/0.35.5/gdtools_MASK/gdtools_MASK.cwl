class: CommandLineTool
id: gdtools_MASK.cwl
inputs:
- id: in_small
  doc: "Mask only 'small' mutations defined as: all SNP mutations; INS, DEL, and SUB\
    \ mutations with sizes ≤ 20 bp; and all INS and DEL mutations causing expansion\
    \ or contraction of simple sequence repeats (SSRs) with at least two repeats of\
    \ the same unit of one to several bp and a total length of 5 bp in the reference\
    \ genome. If these mutations are marked as 'mediated' or 'between' repeats, then\
    \ they are NOT removed."
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_output
  doc: Output Genome Diff file. (DEFAULT=output.gd)
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output Genome Diff file. (DEFAULT=output.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- MASK

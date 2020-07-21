class: CommandLineTool
id: ../../../funannotate_remote.cwl
inputs:
- id: genbank
  doc: GenBank file (must be annotated).
  type: boolean
  inputBinding:
    prefix: --genbank
- id: out
  doc: 'Output folder name. '
  type: boolean
  inputBinding:
    prefix: --out
- id: force
  doc: Force query even if antiSMASH server looks busy
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- remote

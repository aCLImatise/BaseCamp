class: CommandLineTool
id: funannotate_remote.cwl
inputs:
- id: in_methods
  doc: Which services to run, space separated [phobius,antismash,all]
  type: boolean
  inputBinding:
    prefix: --methods
- id: in_email
  doc: Email address to identify yourself to services.
  type: boolean
  inputBinding:
    prefix: --email
- id: in_input
  doc: Funannotate input folder.
  type: boolean
  inputBinding:
    prefix: --input
- id: in_out
  doc: Output folder name.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_force
  doc: Force query even if antiSMASH server looks busy
  type: boolean
  inputBinding:
    prefix: --force
- id: in_or
  doc: -g, --genbank       GenBank file (must be annotated).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output folder name.
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- funannotate
- remote

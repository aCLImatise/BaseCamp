class: CommandLineTool
id: fwdpy11.cwl
inputs:
- id: in_includes
  doc: Print the CPPFLAGS required to use fwdpy11 and fwdpp
  type: boolean?
  inputBinding:
    prefix: --includes
- id: in_fwd_pp_headers
  doc: Get location of fwdpp headers
  type: boolean?
  inputBinding:
    prefix: --fwdpp_headers
- id: in_mako
  doc: Print minimal mako header for use with cppimport.
  type: boolean?
  inputBinding:
    prefix: --mako
- id: in_fwd_py_one_one_headers
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --fwdpy11_headers
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_headers_dot
  doc: --fwdpy11_headers  Get location of fwdpy11 headers
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fwdpy11:0.13.2--py36hd672420_0
cwlVersion: v1.1
baseCommand:
- fwdpy11

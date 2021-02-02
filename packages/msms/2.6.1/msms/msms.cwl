class: CommandLineTool
id: msms.cwl
inputs:
- id: in_probe_radius
  doc: ': probe sphere radius, [1.5]'
  type: double
  inputBinding:
    prefix: -probe_radius
- id: in_density
  doc: ': surface points density, [1.0]'
  type: double
  inputBinding:
    prefix: -density
- id: in_h_density
  doc: ': surface points high density, [3.0]'
  type: double
  inputBinding:
    prefix: -hdensity
- id: in_surface
  doc: '<tses,ases>: triangulated or Analytical SES, [tses]'
  type: boolean
  inputBinding:
    prefix: -surface
- id: in_no_area
  doc: ': turns off the analytical surface area computation'
  type: boolean
  inputBinding:
    prefix: -no_area
- id: in_socket_name
  doc: ': socket connection from a client'
  type: string
  inputBinding:
    prefix: -socketName
- id: in_socket_port
  doc: ': socket connection from a client'
  type: long
  inputBinding:
    prefix: -socketPort
- id: in_xdr
  doc: ': use xdr encoding over socket'
  type: boolean
  inputBinding:
    prefix: -xdr
- id: in_s_inetd
  doc: ': inetd server connection'
  type: boolean
  inputBinding:
    prefix: -sinetd
- id: in_noh
  doc: ': ignore atoms with radius 1.2'
  type: boolean
  inputBinding:
    prefix: -noh
- id: in_no_rest_on_pbr
  doc: ': no restart if pb. during triangulation'
  type: boolean
  inputBinding:
    prefix: -no_rest_on_pbr
- id: in_no_rest
  doc: ': no restart if pb. are encountered'
  type: boolean
  inputBinding:
    prefix: -no_rest
- id: in_if
  doc: ': sphere input file'
  type: File
  inputBinding:
    prefix: -if
- id: in_of
  doc: ': output for triangulated surface'
  type: File
  inputBinding:
    prefix: -of
- id: in_af
  doc: ': area file'
  type: File
  inputBinding:
    prefix: -af
- id: in_no_header
  doc: ': do not add comment line to the output'
  type: boolean
  inputBinding:
    prefix: -no_header
- id: in_free_vertices
  doc: ': turns on computation for isolated RS vertices'
  type: boolean
  inputBinding:
    prefix: -free_vertices
- id: in_all_components
  doc: ': compute all the surfaces components'
  type: boolean
  inputBinding:
    prefix: -all_components
- id: in_one_cavity
  doc: '#atoms at1 [at2][at3] : Compute the surface for an internal                        cavity
    for which at least one atom is specified'
  type: boolean
  inputBinding:
    prefix: -one_cavity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msms

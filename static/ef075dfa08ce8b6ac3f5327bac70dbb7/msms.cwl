class: CommandLineTool
id: msms.cwl
inputs:
- id: probe_radius
  doc: ': probe sphere radius, [1.5]'
  type: double
  inputBinding:
    prefix: -probe_radius
- id: density
  doc: ': surface points density, [1.0]'
  type: double
  inputBinding:
    prefix: -density
- id: h_density
  doc: ': surface points high density, [3.0]'
  type: double
  inputBinding:
    prefix: -hdensity
- id: surface
  doc: '<tses,ases>: triangulated or Analytical SES, [tses]'
  type: boolean
  inputBinding:
    prefix: -surface
- id: no_area
  doc: ': turns off the analytical surface area computation'
  type: boolean
  inputBinding:
    prefix: -no_area
- id: socket_name
  doc: ': socket connection from a client'
  type: string
  inputBinding:
    prefix: -socketName
- id: socket_port
  doc: ': socket connection from a client'
  type: string
  inputBinding:
    prefix: -socketPort
- id: xdr
  doc: ': use xdr encoding over socket'
  type: boolean
  inputBinding:
    prefix: -xdr
- id: s_inetd
  doc: ': inetd server connection'
  type: boolean
  inputBinding:
    prefix: -sinetd
- id: noh
  doc: ': ignore atoms with radius 1.2'
  type: boolean
  inputBinding:
    prefix: -noh
- id: no_rest_on_pbr
  doc: ': no restart if pb. during triangulation'
  type: boolean
  inputBinding:
    prefix: -no_rest_on_pbr
- id: no_rest
  doc: ': no restart if pb. are encountered'
  type: boolean
  inputBinding:
    prefix: -no_rest
- id: if
  doc: ': sphere input file'
  type: File
  inputBinding:
    prefix: -if
- id: of
  doc: ': output for triangulated surface'
  type: File
  inputBinding:
    prefix: -of
- id: af
  doc: ': area file'
  type: File
  inputBinding:
    prefix: -af
- id: no_header
  doc: ': do not add comment line to the output'
  type: boolean
  inputBinding:
    prefix: -no_header
- id: free_vertices
  doc: ': turns on computation for isolated RS vertices'
  type: boolean
  inputBinding:
    prefix: -free_vertices
- id: all_components
  doc: ': compute all the surfaces components'
  type: boolean
  inputBinding:
    prefix: -all_components
- id: one_cavity
  doc: '#atoms at1 [at2][at3] : Compute the surface for an internal                        cavity
    for which at least one atom is specified'
  type: boolean
  inputBinding:
    prefix: -one_cavity
outputs: []
cwlVersion: v1.1
baseCommand:
- msms

class: CommandLineTool
id: proot.cwl
inputs:
- id: r
  doc: '*path*     Use *path* as the new guest root file-system, default is /.'
  type: boolean
  inputBinding:
    prefix: -r
- id: b
  doc: '*path*     Make the content of *path* accessible in the guest rootfs.'
  type: boolean
  inputBinding:
    prefix: -b
- id: q
  doc: '*command*  Execute guest programs through QEMU as specified by *command*.'
  type: boolean
  inputBinding:
    prefix: -q
- id: w
  doc: '*path*     Set the initial working directory to *path*.'
  type: boolean
  inputBinding:
    prefix: -w
- id: v
  doc: '*value*    Set the level of debug information to *value*.'
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: Print version, copyright, license and contact, then exit.
  type: boolean
  inputBinding:
    prefix: -V
- id: i
  doc: '*string*   Make current user and group appear as *string* "uid:gid".'
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: '*path*     Alias: -r *path* + a couple of recommended -b.'
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: '*path*     Alias: -0 -r *path* + a couple of recommended -b.'
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- proot

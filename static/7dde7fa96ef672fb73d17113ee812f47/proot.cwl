class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/proot.cwl
inputs:
- id: path_use_path
  doc: '*path*     Use *path* as the new guest root file-system, default is /.'
  type: boolean
  inputBinding:
    prefix: -r
- id: path_make_accessible
  doc: '*path*     Make the content of *path* accessible in the guest rootfs.'
  type: boolean
  inputBinding:
    prefix: -b
- id: command_execute_guest
  doc: '*command*  Execute guest programs through QEMU as specified by *command*.'
  type: boolean
  inputBinding:
    prefix: -q
- id: path_set_directory
  doc: '*path*     Set the initial working directory to *path*.'
  type: boolean
  inputBinding:
    prefix: -w
- id: value_set_level
  doc: '*value*    Set the level of debug information to *value*.'
  type: boolean
  inputBinding:
    prefix: -v
- id: print_version_copyright
  doc: Print version, copyright, license and contact, then exit.
  type: boolean
  inputBinding:
    prefix: -V
- id: string_make_kernel_appear
  doc: '*string*   Make current kernel appear as kernel release *string*.'
  type: boolean
  inputBinding:
    prefix: -k
- id: make_user_appear
  doc: Make current user appear as "root" and fake its privileges.
  type: boolean
  inputBinding:
    prefix: '-0'
- id: string_make_user_appear
  doc: '*string*   Make current user and group appear as *string* "uid:gid".'
  type: boolean
  inputBinding:
    prefix: -i
- id: path_alias_path
  doc: '*path*     Alias: -r *path* + a couple of recommended -b.'
  type: boolean
  inputBinding:
    prefix: -R
- id: path_alias_r
  doc: '*path*     Alias: -0 -r *path* + a couple of recommended -b.'
  type: boolean
  inputBinding:
    prefix: -S
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- proot

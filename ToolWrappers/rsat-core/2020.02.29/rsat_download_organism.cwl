class: CommandLineTool
id: rsat_download_organism.cwl
inputs:
- id: in_org
  doc: \
  type: string?
  inputBinding:
    prefix: -org
- id: in_ssh
  doc: :rsat_path_on_server
  type: string?
  inputBinding:
    prefix: -ssh
- id: in_download_organism
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_do_tv_and_otheldenatulbdotacdotbe
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_supported_organisms_server
  doc: The query to the remote server can also be restricted to a given taxon.
  type: string
  inputBinding:
    position: 0
- id: in_rs_at_dot
  doc: "This differs from \e[33mdownload-organism\e[0m, which transfers the RSAT-formatted"
  type: string
  inputBinding:
    position: 0
- id: in_wget_dot
  doc: "\e[1manonymous rsync\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two
  doc: The option -org can be used iteratively on teh command line to
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- download-organism

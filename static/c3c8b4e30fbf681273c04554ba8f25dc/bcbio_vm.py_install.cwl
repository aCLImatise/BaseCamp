class: CommandLineTool
id: bcbio_vm.py_install.cwl
inputs:
- id: in_genomes
  doc: Genomes to download
  type: string?
  inputBinding:
    prefix: --genomes
- id: in_aligners
  doc: Aligner indexes to download
  type: string?
  inputBinding:
    prefix: --aligners
- id: in_data_target
  doc: "Data to install. Allows customization or install of\nextra data."
  type: string?
  inputBinding:
    prefix: --datatarget
- id: in_data
  doc: Install or upgrade data dependencies
  type: boolean?
  inputBinding:
    prefix: --data
- id: in_tools
  doc: Install or upgrade tool dependencies
  type: boolean?
  inputBinding:
    prefix: --tools
- id: in_wrapper
  doc: Update wrapper bcbio-nextgen-vm code
  type: boolean?
  inputBinding:
    prefix: --wrapper
- id: in_image
  doc: "Docker image name to use, could point to compatible\npre-installed image."
  type: string?
  inputBinding:
    prefix: --image
- id: in_cores
  doc: Cores to use for parallel data prep processes
  type: string?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- install

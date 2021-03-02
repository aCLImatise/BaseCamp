class: CommandLineTool
id: bcbio_vm.py_runfn.cwl
inputs:
- id: in_system_config
  doc: "Global YAML configuration file specifying system\ndetails. Defaults to installed\
    \ bcbio_system.yaml."
  type: File?
  inputBinding:
    prefix: --systemconfig
- id: in_num_cores
  doc: "Total cores to use for processing\n"
  type: long?
  inputBinding:
    prefix: --numcores
- id: in_fn_name
  doc: Name of the function to run
  type: string
  inputBinding:
    position: 0
- id: in_parallel
  doc: JSON/YAML file describing the parallel environment
  type: string
  inputBinding:
    position: 1
- id: in_run_args
  doc: JSON/YAML file with arguments to the function
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- runfn

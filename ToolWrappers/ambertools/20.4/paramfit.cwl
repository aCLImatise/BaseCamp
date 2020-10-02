class: CommandLineTool
id: paramfit.cwl
inputs:
- id: in_job_control_file
  doc: "Job control file location (mandatory)\n-p prmtop  Parameter file location\
    \ --OR--"
  type: File
  inputBinding:
    prefix: -i
- id: in_pf
  doc: "list     List of multiple parameter files to use, their K values\n-c mdcrd\
    \   Coordinate file location --OR--"
  type: File
  inputBinding:
    prefix: -pf
- id: in_cf
  doc: "list      List of mdcrd files, number of structres, qm files location\n-q\
    \ QM_data.dat     List of quantum energies (for single fits only)\n-v MEDIUM\n\
    --random-seed 0 (for debugging only, no default value)\n/history prints program\
    \ development history\nFor HELP please see the documentation\n"
  type: long
  inputBinding:
    prefix: -cf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- paramfit

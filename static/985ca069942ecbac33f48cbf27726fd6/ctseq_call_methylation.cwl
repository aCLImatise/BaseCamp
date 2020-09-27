class: CommandLineTool
id: ctseq_call_methylation.cwl
inputs:
- id: in_ref_dir
  doc: "Full path to directory where you have already built\nyour methylation reference\
    \ files. If no '--refDir' is\nspecified, ctseq will look in your current directory."
  type: File
  inputBinding:
    prefix: --refDir
- id: in_dir
  doc: "Full path to directory where your '*allMolecules.txt'\nfiles are located.\
    \ If no '--dir' is specified, ctseq\nwill look in your current directory."
  type: File
  inputBinding:
    prefix: --dir
- id: in_name_run
  doc: "number of reads needed to be counted as a unique\nmolecule (required)"
  type: long
  inputBinding:
    prefix: --nameRun
- id: in_processes
  doc: number of processes (default=1)
  type: long
  inputBinding:
    prefix: --processes
- id: in_cisc_g
  doc: "cis-CG threshold to determine if a molecule is\nmethylated (default=0.75)"
  type: double
  inputBinding:
    prefix: --cisCG
- id: in_molecule_threshold
  doc: "number of reads needed to be counted as a unique\nmolecule (default=5)\n"
  type: long
  inputBinding:
    prefix: --moleculeThreshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ctseq
- call_methylation

class: CommandLineTool
id: abritamr.cwl
inputs:
- id: in_mdu_qc
  doc: "Set if running on MDU QC data. If set please provide\nthe MDU QC .csv as further\
    \ input and an additional\noutput suitable for lims input will be provided.\n\
    (default: False)"
  type: boolean
  inputBinding:
    prefix: --mduqc
- id: in_qc
  doc: "Name of checked MDU QC file. (default:\nmdu_qc_checked.csv)"
  type: File
  inputBinding:
    prefix: --qc
- id: in_positive_control
  doc: "Path to positive control sequence - must be set if\nusing -m (default: )"
  type: File
  inputBinding:
    prefix: --positive_control
- id: in_singularity
  doc: "If using singularity container for AMRfinderplus\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --Singularity
- id: in_singularity_path
  doc: "Path to the singularity container for AMRfinderplus,\nif empty will defualt\
    \ to shub://phgenomics-\nsingularity/amrfinderplus (default: )"
  type: File
  inputBinding:
    prefix: --singularity_path
- id: in_contigs
  doc: "Tab-delimited file with sample ID as column 1 and path\nto assemblies as column\
    \ 2 (default: )"
  type: File
  inputBinding:
    prefix: --contigs
- id: in_amr_finder_output
  doc: "Tab-delimited file with sample ID as column 1 and path\nto amr_finder output\
    \ files as column 2 (default: )"
  type: File
  inputBinding:
    prefix: --amrfinder_output
- id: in_workdir
  doc: "Working directory, default is current directory\n(default: /)"
  type: Directory
  inputBinding:
    prefix: --workdir
- id: in_resources
  doc: "Directory where templates are stored (default:\n/usr/local/lib/python3.7/site-packages/abritamr)"
  type: Directory
  inputBinding:
    prefix: --resources
- id: in_drug_classes
  doc: "Path to file (default: /usr/local/lib/python3.7/site-\npackages/abritamr/db/refgenes.csv)"
  type: File
  inputBinding:
    prefix: --drug_classes
- id: in_jobs
  doc: "Number of AMR finder jobs to run in parallel.\n(default: 16)"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_keep
  doc: "If you would like to keep intermediate files and\nsnakemake log. Default is\
    \ to remove (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --keep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_amr_finder_output
  doc: "Tab-delimited file with sample ID as column 1 and path\nto amr_finder output\
    \ files as column 2 (default: )"
  type: File
  outputBinding:
    glob: $(inputs.in_amr_finder_output)
cwlVersion: v1.1
baseCommand:
- abritamr

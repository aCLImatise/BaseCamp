class: CommandLineTool
id: abriTAMR.cwl
inputs:
- id: in_mdu_qc
  doc: "Set if running on MDU QC data. If set please provide\nthe MDU QC .csv as further\
    \ input and an additional\noutput suitable for lims input will be provided.\n\
    (default: False)"
  type: boolean?
  inputBinding:
    prefix: --mduqc
- id: in_qc
  doc: "Name of checked MDU QC file. (default:\nmdu_qc_checked.csv)"
  type: File?
  inputBinding:
    prefix: --qc
- id: in_positive_control
  doc: "Path to positive control sequence - must be set if\nusing -m (default: )"
  type: File?
  inputBinding:
    prefix: --positive_control
- id: in_singularity
  doc: "If using singularity container for AMRfinderplus\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --Singularity
- id: in_singularity_path
  doc: "Path to the singularity container for AMRfinderplus,\nif empty will defualt\
    \ to shub://phgenomics-\nsingularity/amrfinderplus (default: )"
  type: File?
  inputBinding:
    prefix: --singularity_path
- id: in_contigs
  doc: "Tab-delimited file with sample ID as column 1 and path\nto assemblies as column\
    \ 2 OR path to a contig file\n(used if only doing a single sample - should provide\n\
    value for -pfx). (default: )"
  type: File?
  inputBinding:
    prefix: --contigs
- id: in_amr_finder_output
  doc: "Tab-delimited file with sample ID as column 1 and path\nto amr_finder output\
    \ files as column 2 OR path to a\namrfinder ouptu file (used if only doing a single\n\
    sample - should provide value for -pfx). (default: )"
  type: File?
  inputBinding:
    prefix: --amrfinder_output
- id: in_prefix
  doc: "If using abriTAMR on single file please provide a\nprefix (default: )"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_workdir
  doc: "Working directory, default is current directory\n(default: /)"
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_resources
  doc: "Directory where templates are stored (default:\n/usr/local/lib/python3.7/site-packages/abritamr)"
  type: Directory?
  inputBinding:
    prefix: --resources
- id: in_species_detect
  doc: "Set if you would like to use point mutations.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --species_detect
- id: in_jobs
  doc: "Number of AMR finder jobs to run in parallel.\n(default: 16)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_keep
  doc: "If you would like to keep intermediate files and\nsnakemake log. Default is\
    \ to remove (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_amr_finder_output
  doc: "Tab-delimited file with sample ID as column 1 and path\nto amr_finder output\
    \ files as column 2 OR path to a\namrfinder ouptu file (used if only doing a single\n\
    sample - should provide value for -pfx). (default: )"
  type: File?
  outputBinding:
    glob: $(inputs.in_amr_finder_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abritamr:0.2.2--py_0
cwlVersion: v1.1
baseCommand:
- abriTAMR

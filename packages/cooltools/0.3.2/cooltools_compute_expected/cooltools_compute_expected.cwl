class: CommandLineTool
id: cooltools_compute_expected.cwl
inputs:
- id: in_nproc
  doc: "Number of processes to split the work\nbetween.[default: 1, i.e. no process\
    \ pool]"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_chunksize
  doc: "Control the number of pixels handled by each\nworker process at a time.  [default:\n\
    10000000]"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_output
  doc: "Specify output file name to store the\nexpected in a tsv format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_hdf
  doc: "Use hdf5 format instead of tsv. Output file\nname must be specified [Not Implemented]."
  type: File?
  inputBinding:
    prefix: --hdf
- id: in_contact_type
  doc: "[cis|trans]  compute expected for cis or trans region of\na Hi-C map.Ignored\
    \ when genomic-regions are\nprovided  [default: cis]"
  type: boolean?
  inputBinding:
    prefix: --contact-type
- id: in_genomic_regions
  doc: "Path to a BED or BEDPE file containing\ngenomic regions for which expected\
    \ will be\ncalculated. [Not Implemented]"
  type: File?
  inputBinding:
    prefix: --genomic-regions
- id: in_no_balance
  doc: "Apply balancing weights to data before\ncalculating expected.Bins masked in\
    \ the\nbalancing weights are ignored from\ncalcualtions.  [default: True]"
  type: boolean?
  inputBinding:
    prefix: --no-balance
- id: in_weight_name
  doc: "Use balancing weight with this name.\n[default: weight]"
  type: string?
  inputBinding:
    prefix: --weight-name
- id: in_blacklist
  doc: "Path to a 3-column BED file containing\ngenomic regions to mask out during\n\
    calculation of expected. Overwrites\ninference of 'bad' regions from balancing\n\
    weights. [Not Implemented]"
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_ignore_diags
  doc: "Number of diagonals to neglect for cis\ncontact type  [default: 2]"
  type: long?
  inputBinding:
    prefix: --ignore-diags
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify output file name to store the\nexpected in a tsv format."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_hdf
  doc: "Use hdf5 format instead of tsv. Output file\nname must be specified [Not Implemented]."
  type: File?
  outputBinding:
    glob: $(inputs.in_hdf)
- id: out_blacklist
  doc: "Path to a 3-column BED file containing\ngenomic regions to mask out during\n\
    calculation of expected. Overwrites\ninference of 'bad' regions from balancing\n\
    weights. [Not Implemented]"
  type: File?
  outputBinding:
    glob: $(inputs.in_blacklist)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- cooltools
- compute-expected

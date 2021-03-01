class: CommandLineTool
id: hisatgenotype_locus_samples.py.cwl
inputs:
- id: in_reference_type
  doc: "Reference type: gene, chromosome, and genome (default:\ngene)"
  type: string?
  inputBinding:
    prefix: --reference-type
- id: in_region_list
  doc: 'A comma-separated list of regions (default: empty)'
  type: string?
  inputBinding:
    prefix: --region-list
- id: in_read_dir
  doc: read directory (e.g. read_input)
  type: Directory?
  inputBinding:
    prefix: --read-dir
- id: in_num_edit_dist
  doc: "Maximum number of mismatches per read alignment to be\nconsidered (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --num-editdist
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_assembly
  doc: Perform assembly
  type: boolean?
  inputBinding:
    prefix: --assembly
- id: in_max_sample
  doc: 'Number of samples to be analyzed (default: sys.maxint)'
  type: long?
  inputBinding:
    prefix: --max-sample
- id: in_out_dir
  doc: 'Output directory (default: (empty))'
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_platinum_check
  doc: Check for concordance of platinum genomes
  type: boolean?
  inputBinding:
    prefix: --platinum-check
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'Output directory (default: (empty))'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_locus_samples.py

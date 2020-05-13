class: CommandLineTool
id: hisatgenotype_locus_samples.py.cwl
inputs:
- id: reference_type
  doc: 'Reference type: gene, chromosome, and genome (default: gene)'
  type: string
  inputBinding:
    prefix: --reference-type
- id: region_list
  doc: 'A comma-separated list of regions (default: empty)'
  type: string
  inputBinding:
    prefix: --region-list
- id: read_dir
  doc: read directory (e.g. read_input)
  type: string
  inputBinding:
    prefix: --read-dir
- id: num_edit_dist
  doc: 'Maximum number of mismatches per read alignment to be considered (default:
    2)'
  type: string
  inputBinding:
    prefix: --num-editdist
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: assembly
  doc: Perform assembly
  type: boolean
  inputBinding:
    prefix: --assembly
- id: max_sample
  doc: 'Number of samples to be analyzed (default: sys.maxint)'
  type: long
  inputBinding:
    prefix: --max-sample
- id: out_dir
  doc: 'Output directory (default: (empty))'
  type: string
  inputBinding:
    prefix: --out-dir
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: platinum_check
  doc: Check for concordance of platinum genomes
  type: boolean
  inputBinding:
    prefix: --platinum-check
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_locus_samples.py

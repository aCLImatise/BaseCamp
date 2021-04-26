class: CommandLineTool
id: megalodon_extras_modified_bases_per_site_thresholds.cwl
inputs:
- id: in_ground_truth_cov_min
  doc: "Minimum coverage (both strands) to include a site from\nground truth data.\
    \ Default: 15"
  type: long?
  inputBinding:
    prefix: --ground-truth-cov-min
- id: in_nano_pore_cov_min
  doc: "Minimum coverage (single strand) to include a site\nfrom nanopore data. Default:\
    \ 30"
  type: long?
  inputBinding:
    prefix: --nanopore-cov-min
- id: in_mod_bases
  doc: "Single letter codes for the modified base. For\nmulitple alternative bases\
    \ supply all single letter\ncodes with no spaces. Default: m"
  type: string?
  inputBinding:
    prefix: --mod-bases
- id: in_strand_offset
  doc: "Offset to combine stranded results. Positive value\nindicates reverse strand\
    \ sites have higher position\nvalues. Default treat strands independently."
  type: string?
  inputBinding:
    prefix: --strand-offset
- id: in_valid_sites
  doc: "BED files containing sites over which to restrict\nmodified base results.\
    \ Useful when processing full\nresults using a subset of the ground truth (e.g.\
    \ CG\nand CH processing). Must be sorted in same order as\n[ground_truth_bed]\
    \ (`sort -k1V -k2n`)"
  type: string[]
  inputBinding:
    prefix: --valid-sites
- id: in_out_low_coverage_sites
  doc: "Output filename for sites with low ground truth or\nnanopore coverage. Default:\
    \ low_coverage_sites.bed"
  type: File?
  inputBinding:
    prefix: --out-low-coverage-sites
- id: in_out_per_site_mod_thresholds
  doc: "Output filename for per-site megalodon mod scoring\nthresholds. Default: site_mod_thresholds.bed"
  type: File?
  inputBinding:
    prefix: --out-per-site-mod-thresholds
- id: in_log_filename
  doc: "Output filename for logging. Default:\nper_site_thresholds.log"
  type: File?
  inputBinding:
    prefix: --log-filename
- id: in_batch_size
  doc: "Number of sites to include in each batch for\nprocessing. Default: 100000"
  type: long?
  inputBinding:
    prefix: --batch-size
- id: in_processes
  doc: "Number of processes. Default: 1\n"
  type: long?
  inputBinding:
    prefix: --processes
- id: in_output_dot
  doc: ground_truth_bed      BEDmethyl file containing ground truth fraction
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_low_coverage_sites
  doc: "Output filename for sites with low ground truth or\nnanopore coverage. Default:\
    \ low_coverage_sites.bed"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_low_coverage_sites)
- id: out_out_per_site_mod_thresholds
  doc: "Output filename for per-site megalodon mod scoring\nthresholds. Default: site_mod_thresholds.bed"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_per_site_mod_thresholds)
- id: out_log_filename
  doc: "Output filename for logging. Default:\nper_site_thresholds.log"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- per_site_thresholds

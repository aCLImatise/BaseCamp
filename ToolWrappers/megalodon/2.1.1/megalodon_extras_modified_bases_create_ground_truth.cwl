class: CommandLineTool
id: megalodon_extras_modified_bases_create_ground_truth.cwl
inputs:
- id: in_bed_methyl_files
  doc: "BED_METHYL_FILES\n[BED_METHYL_FILES ...]\n[--coverage-threshold COVERAGE_THRESHOLD]\n\
    [--pct-mod-thresholds PCT_MOD_THRESHOLDS PCT_MOD_THRESHOLDS]\n[--out-csv OUT_CSV]\n\
    [--strand-offset STRAND_OFFSET]"
  type: boolean
  inputBinding:
    prefix: --bed-methyl-files
- id: in_coverage_threshold
  doc: "Only include sites with sufficient coverage. Default:\n1 (= All sites)"
  type: long
  inputBinding:
    prefix: --coverage-threshold
- id: in_pct_mod_thresholds
  doc: "PCT_MOD_THRESHOLDS\nLower and upper percent modified thresholds for ground\n\
    truth modified positions. Default: [10.0, 90.0]"
  type: double
  inputBinding:
    prefix: --pct-mod-thresholds
- id: in_out_csv
  doc: 'Output filename for ground truth calls. Default:'
  type: File
  inputBinding:
    prefix: --out-csv
- id: in_ground_truth_modifications_dot_csv
  doc: --strand-offset STRAND_OFFSET
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_csv
  doc: 'Output filename for ground truth calls. Default:'
  type: File
  outputBinding:
    glob: $(inputs.in_out_csv)
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- create_ground_truth

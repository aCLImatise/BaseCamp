class: CommandLineTool
id: truvari.cwl
inputs:
- id: in_base
  doc: Baseline truth-set calls
  type: string
  inputBinding:
    prefix: --base
- id: in_comp
  doc: Comparison set of calls
  type: string
  inputBinding:
    prefix: --comp
- id: in_output
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output
- id: in_reference
  doc: Indexed fasta used to call variants
  type: string
  inputBinding:
    prefix: --reference
- id: in_gia_b_report
  doc: Parse output TPs/FNs for GIAB annotations and create a
  type: boolean
  inputBinding:
    prefix: --giabreport
- id: in_ref_dist
  doc: Max reference location distance (500)
  type: long
  inputBinding:
    prefix: --refdist
- id: in_pct_sim
  doc: "Min percent allele sequence similarity. Set to 0 to\nignore. (0.7)"
  type: long
  inputBinding:
    prefix: --pctsim
- id: in_pct_size
  doc: "Min pct allele size similarity (minvarsize/maxvarsize)\n(0.7)"
  type: long
  inputBinding:
    prefix: --pctsize
- id: in_pc_to_vl
  doc: Minimum pct reciprocal overlap (0.0)
  type: double
  inputBinding:
    prefix: --pctovl
- id: in_type_ignore
  doc: Variant types don't need to match to compare (False)
  type: boolean
  inputBinding:
    prefix: --typeignore
- id: in_gt_comp
  doc: Compare GenoTypes of matching calls
  type: boolean
  inputBinding:
    prefix: --gtcomp
- id: in_b_sample
  doc: Baseline calls sample to use (first)
  type: string
  inputBinding:
    prefix: --bSample
- id: in_c_sample
  doc: Comparison calls sample to use (first)
  type: string
  inputBinding:
    prefix: --cSample
- id: in_size_min
  doc: Minimum variant size to consider for comparison (50)
  type: long
  inputBinding:
    prefix: --sizemin
- id: in_size_filt
  doc: Minimum variant size to load into IntervalTree (30)
  type: long
  inputBinding:
    prefix: --sizefilt
- id: in_size_max
  doc: "Maximum variant size to consider for comparison\n(50000)"
  type: long
  inputBinding:
    prefix: --sizemax
- id: in_pass_only
  doc: Only consider calls with FILTER == PASS
  type: boolean
  inputBinding:
    prefix: --passonly
- id: in_no_ref
  doc: Don't include 0/0 or ./. GT calls (False)
  type: boolean
  inputBinding:
    prefix: --no-ref
- id: in_include_bed
  doc: "Bed file of regions in the genome to include only\ncalls overlapping"
  type: File
  inputBinding:
    prefix: --includebed
- id: in_multi_match
  doc: "Allow base calls to match multiple comparison calls\n(False)\n"
  type: boolean
  inputBinding:
    prefix: --multimatch
- id: in_report
  doc: --debug               Verbose logging
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- truvari

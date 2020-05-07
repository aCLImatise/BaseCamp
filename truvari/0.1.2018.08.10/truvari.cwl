class: CommandLineTool
id: truvari.cwl
inputs:
- id: base
  doc: Baseline truth-set calls
  type: string
  inputBinding:
    prefix: --base
- id: comp
  doc: Comparison set of calls
  type: string
  inputBinding:
    prefix: --comp
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: Indexed fasta used to call variants
  type: string
  inputBinding:
    prefix: --reference
- id: gia_b_report
  doc: Parse output TPs/FNs for GIAB annotations and create a report
  type: boolean
  inputBinding:
    prefix: --giabreport
- id: debug
  doc: Verbose logging
  type: boolean
  inputBinding:
    prefix: --debug
- id: ref_dist
  doc: Max reference location distance (500)
  type: string
  inputBinding:
    prefix: --refdist
- id: pct_sim
  doc: Min percent allele sequence similarity. Set to 0 to ignore. (0.7)
  type: string
  inputBinding:
    prefix: --pctsim
- id: pct_size
  doc: Min pct allele size similarity (minvarsize/maxvarsize) (0.7)
  type: string
  inputBinding:
    prefix: --pctsize
- id: pc_to_vl
  doc: Minimum pct reciprocal overlap (0.0)
  type: string
  inputBinding:
    prefix: --pctovl
- id: type_ignore
  doc: Variant types don't need to match to compare (False)
  type: boolean
  inputBinding:
    prefix: --typeignore
- id: gt_comp
  doc: Compare GenoTypes of matching calls
  type: boolean
  inputBinding:
    prefix: --gtcomp
- id: b_sample
  doc: Baseline calls sample to use (first)
  type: string
  inputBinding:
    prefix: --bSample
- id: c_sample
  doc: Comparison calls sample to use (first)
  type: string
  inputBinding:
    prefix: --cSample
- id: size_min
  doc: Minimum variant size to consider for comparison (50)
  type: long
  inputBinding:
    prefix: --sizemin
- id: size_filt
  doc: Minimum variant size to load into IntervalTree (30)
  type: long
  inputBinding:
    prefix: --sizefilt
- id: size_max
  doc: Maximum variant size to consider for comparison (50000)
  type: long
  inputBinding:
    prefix: --sizemax
- id: pass_only
  doc: Only consider calls with FILTER == PASS
  type: boolean
  inputBinding:
    prefix: --passonly
- id: no_ref
  doc: Don't include 0/0 or ./. GT calls (False)
  type: boolean
  inputBinding:
    prefix: --no-ref
- id: include_bed
  doc: Bed file of regions in the genome to include only calls overlapping
  type: string
  inputBinding:
    prefix: --includebed
- id: multi_match
  doc: Allow base calls to match multiple comparison calls (False)
  type: boolean
  inputBinding:
    prefix: --multimatch
outputs: []
cwlVersion: v1.1
baseCommand:
- truvari

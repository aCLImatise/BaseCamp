#!/usr/bin/env cwl-runner

baseCommand:
- truvari
class: CommandLineTool
cwlVersion: v1.0
id: truvari
inputs:
- doc: Baseline truth-set calls
  id: base
  inputBinding:
    prefix: --base
  type: string
- doc: Comparison set of calls
  id: comp
  inputBinding:
    prefix: --comp
  type: string
- doc: Output directory
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Indexed fasta used to call variants
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Parse output TPs/FNs for GIAB annotations and create a report
  id: gia_b_report
  inputBinding:
    prefix: --giabreport
  type: boolean
- doc: Verbose logging
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Max reference location distance (500)
  id: ref_dist
  inputBinding:
    prefix: --refdist
  type: string
- doc: Min percent allele sequence similarity. Set to 0 to ignore. (0.7)
  id: pct_sim
  inputBinding:
    prefix: --pctsim
  type: string
- doc: Min pct allele size similarity (minvarsize/maxvarsize) (0.7)
  id: pct_size
  inputBinding:
    prefix: --pctsize
  type: string
- doc: Minimum pct reciprocal overlap (0.0)
  id: pc_to_vl
  inputBinding:
    prefix: --pctovl
  type: string
- doc: Variant types don't need to match to compare (False)
  id: type_ignore
  inputBinding:
    prefix: --typeignore
  type: boolean
- doc: Compare GenoTypes of matching calls
  id: gt_comp
  inputBinding:
    prefix: --gtcomp
  type: boolean
- doc: Baseline calls sample to use (first)
  id: b_sample
  inputBinding:
    prefix: --bSample
  type: string
- doc: Comparison calls sample to use (first)
  id: c_sample
  inputBinding:
    prefix: --cSample
  type: string
- doc: Minimum variant size to consider for comparison (50)
  id: size_min
  inputBinding:
    prefix: --sizemin
  type: long
- doc: Minimum variant size to load into IntervalTree (30)
  id: size_filt
  inputBinding:
    prefix: --sizefilt
  type: long
- doc: Maximum variant size to consider for comparison (50000)
  id: size_max
  inputBinding:
    prefix: --sizemax
  type: long
- doc: Only consider calls with FILTER == PASS
  id: pass_only
  inputBinding:
    prefix: --passonly
  type: boolean
- doc: Don't include 0/0 or ./. GT calls (False)
  id: no_ref
  inputBinding:
    prefix: --no-ref
  type: boolean
- doc: Bed file of regions in the genome to include only calls overlapping
  id: include_bed
  inputBinding:
    prefix: --includebed
  type: string
- doc: Allow base calls to match multiple comparison calls (False)
  id: multi_match
  inputBinding:
    prefix: --multimatch
  type: boolean

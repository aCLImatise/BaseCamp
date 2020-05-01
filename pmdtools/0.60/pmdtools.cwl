#!/usr/bin/env cwl-runner

baseCommand:
- pmdtools
class: CommandLineTool
cwlVersion: v1.0
id: pmdtools
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: pmd_tools
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: sam_formatted_data_with_md_field_present_from_stdin
  inputBinding:
    position: 2
  type: string
- doc: strand orientation aware penalization of base qualities for single stranded
    libraries (use with --CpG for udg-treated ss libs)
  id: adjusts_s
  inputBinding:
    prefix: --adjustss
  type: boolean
- doc: stop after these many reads have been processed
  id: number
  inputBinding:
    prefix: --number
  type: long
- doc: only process data from this chromosome
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
- doc: only process sequences with mapping quality at least this great
  id: require_mapq
  inputBinding:
    prefix: --requiremapq
  type: string
- doc: only process sequences with this read length
  id: read_length
  inputBinding:
    prefix: --readlength
  type: string
- doc: only process sequences with max this read length
  id: maxlength
  inputBinding:
    prefix: --maxlength
  type: long
- doc: only process sequences with min this read length
  id: minlength
  inputBinding:
    prefix: --minlength
  type: long
- doc: only process sequences with max this GC content of the aligning reference sequence
  id: max_gc
  inputBinding:
    prefix: --maxGC
  type: long
- doc: only process sequences with min this GC content of the aligning reference sequence
  id: ming_c
  inputBinding:
    prefix: --minGC
  type: long
- doc: only process bases with base quality at least this great
  id: require_base_q
  inputBinding:
    prefix: --requirebaseq
  type: string
- doc: output base frequencies in the read at positions where there are C or G in
    the reference
  id: deamination
  inputBinding:
    prefix: --deamination
  type: boolean
- doc: only use Cs and Gs in CpG context
  id: udg_plus
  inputBinding:
    prefix: --UDGplus
  type: boolean
- doc: single stranded
  id: ss
  inputBinding:
    prefix: --ss
  type: boolean
- doc: PMDSprim
  id: pm_dsp_rim
  inputBinding:
    prefix: --PMDSprim
  type: boolean
- doc: PMDSprimthreshold
  id: pm_dsp_rim_threshold
  inputBinding:
    prefix: --PMDSprimthreshold
  type: string
- doc: only use Cs and Gs in CpG context, the first and last base are used regardless
    of dinucleotide context
  id: udg_half
  inputBinding:
    prefix: --UDGhalf
  type: boolean
- doc: use all bases (placeholder)
  id: udg_minus
  inputBinding:
    prefix: --UDGminus
  type: boolean
- doc: Ecoli CpG (first 5' position and two 3' positions and CpG context)
  id: ecoli_cpg
  inputBinding:
    prefix: --EcoliCpG
  type: boolean
- doc: Ecoli (first 5' position and two 3' positions only)
  id: ecoli
  inputBinding:
    prefix: --Ecoli
  type: boolean
- doc: mask to lower case bases where ref is C (taking strand into account)
  id: masks_s
  inputBinding:
    prefix: --maskss
  type: boolean
- doc: Leipzigsimple
  id: leipzig_simple
  inputBinding:
    prefix: --Leipzigsimple
  type: boolean
- doc: customterminus
  id: custom_terminus
  inputBinding:
    prefix: --customterminus
  type: string
- doc: flag SNPs (taking strand into account)
  id: flags_s
  inputBinding:
    prefix: --flagss
  type: boolean
- doc: dont use Cs and Gs in CpG context
  id: no_cpg
  inputBinding:
    prefix: --noCpG
  type: boolean
- doc: outputs the deamination rate at the first position only, but with a standard
    error
  id: first
  inputBinding:
    prefix: --first
  type: boolean
- doc: output deamination patterns for this many positions from the sequence terminus
    (default=30)
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: True biological polymorphism between the ancient individual and the reference
    sequence
  id: polymorphism_ancient
  inputBinding:
    prefix: --polymorphism_ancient
  type: string
- doc: True biological polymorphism between the contaminants and the reference sequence
  id: polymorphism_contamination
  inputBinding:
    prefix: --polymorphism_contamination
  type: string
- doc: parameter p in geometric probability distribution of PMD
  id: pm_dp_param
  inputBinding:
    prefix: --PMDpparam
  type: string
- doc: constant C in geometric probability distribution of PMD
  id: pmd_constant
  inputBinding:
    prefix: --PMDconstant
  type: string
- doc: no clips
  id: no_clips
  inputBinding:
    prefix: --noclips
  type: boolean
- doc: no indels
  id: no_indels
  inputBinding:
    prefix: --noindels
  type: boolean
- doc: only clips
  id: only_clips
  inputBinding:
    prefix: --onlyclips
  type: boolean
- doc: only deletions
  id: only_deletions
  inputBinding:
    prefix: --onlydeletions
  type: boolean
- doc: only insertions
  id: only_insertions
  inputBinding:
    prefix: --onlyinsertions
  type: boolean
- doc: no deletions
  id: no_deletions
  inputBinding:
    prefix: --nodeletions
  type: boolean
- doc: no insertions
  id: no_insertions
  inputBinding:
    prefix: --noinsertions
  type: boolean
- doc: no reverse complement alignments
  id: not_reverse
  inputBinding:
    prefix: --notreverse
  type: boolean
- doc: print PMD scores
  id: print_ds
  inputBinding:
    prefix: --printDS
  type: boolean
- doc: verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: print human readable alignments
  id: print_alignments
  inputBinding:
    prefix: --printalignments
  type: boolean
- doc: mask terminal deaminations
  id: mask_terminal_deamination_s
  inputBinding:
    prefix: --maskterminaldeaminations
  type: string
- doc: mask terminal bases
  id: mask_terminal_bases
  inputBinding:
    prefix: --maskterminalbases
  type: string
- doc: only output sequences with PMD score above this threshold
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: only output sequences with PMD score below this threshold
  id: upper_threshold
  inputBinding:
    prefix: --upperthreshold
  type: string
- doc: only output sequences with percent identity above this threshold
  id: perc_identity
  inputBinding:
    prefix: --perc_identity
  type: string
- doc: apply PMD-aware adjustment of base quality scores specific to C>T and G>A mismatches
    to the reference
  id: adjust_base_q
  inputBinding:
    prefix: --adjustbaseq
  type: boolean
- doc: apply PMD-aware adjustment of base quality scores regardless of observed bases
  id: adjust_base_q_all
  inputBinding:
    prefix: --adjustbaseq_all
  type: boolean
- doc: print SAM input without any filters
  id: dry
  inputBinding:
    prefix: --dry
  type: boolean
- doc: full path to samtools
  id: sam_tools_path
  inputBinding:
    prefix: --samtoolspath
  type: string
- doc: basecomposition
  id: base_composition
  inputBinding:
    prefix: --basecomposition
  type: boolean
- doc: refseq
  id: refseq
  inputBinding:
    prefix: --refseq
  type: string
- doc: output the SAM header
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: two-terminus estimate of contamination
  id: estimate
  inputBinding:
    prefix: --estimate
  type: boolean
- doc: position of base used fortwo-terminus estimate of contamination
  id: estimate_base
  inputBinding:
    prefix: --estimatebase
  type: string
- doc: output big list of base frequencies for platypus
  id: platypus
  inputBinding:
    prefix: --platypus
  type: boolean
- doc: add 'DS:Z:<PMDS>' field to SAM output, will overwrite if already present
  id: writes_am_field
  inputBinding:
    prefix: --writesamfield
  type: boolean
- doc: only output reads with a C>T mismatch this many basepairs from the 5' end
  id: basic
  inputBinding:
    prefix: --basic
  type: string
- doc: only output reads with a C>T mismatch in either 3' or 5' end
  id: terminal
  inputBinding:
    prefix: --terminal
  type: boolean
- doc: output summarizing statistics to stderr
  id: stats
  inputBinding:
    prefix: --stats
  type: boolean

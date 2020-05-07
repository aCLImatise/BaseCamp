class: CommandLineTool
id: pmdtools_mod.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pmd_tools_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sam_formatted_data_with_md_field_present_from_stdin
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pm_dsp_rim
  doc: PMDSprim
  type: boolean
  inputBinding:
    prefix: --PMDSprim
- id: pm_dsp_rim_threshold
  doc: PMDSprimthreshold
  type: string
  inputBinding:
    prefix: --PMDSprimthreshold
- id: first
  doc: outputs the deamination rate at the first position only, but with a standard
    error
  type: boolean
  inputBinding:
    prefix: --first
- id: range
  doc: output deamination patterns for this many positions from the sequence terminus
    (default=30)
  type: string
  inputBinding:
    prefix: --range
- id: no_clips
  doc: no clips
  type: boolean
  inputBinding:
    prefix: --noclips
- id: no_indels
  doc: no indels
  type: boolean
  inputBinding:
    prefix: --noindels
- id: only_clips
  doc: only clips
  type: boolean
  inputBinding:
    prefix: --onlyclips
- id: only_deletions
  doc: only deletions
  type: boolean
  inputBinding:
    prefix: --onlydeletions
- id: only_insertions
  doc: only insertions
  type: boolean
  inputBinding:
    prefix: --onlyinsertions
- id: no_deletions
  doc: no deletions
  type: boolean
  inputBinding:
    prefix: --nodeletions
- id: no_insertions
  doc: no insertions
  type: boolean
  inputBinding:
    prefix: --noinsertions
- id: not_reverse
  doc: no reverse complement alignments
  type: boolean
  inputBinding:
    prefix: --notreverse
- id: adjust_base_q
  doc: apply PMD-aware adjustment of base quality scores specific to C>T and G>A mismatches
    to the reference
  type: boolean
  inputBinding:
    prefix: --adjustbaseq
- id: adjust_base_q_all
  doc: apply PMD-aware adjustment of base quality scores regardless of observed bases
  type: boolean
  inputBinding:
    prefix: --adjustbaseq_all
- id: sam_tools_path
  doc: full path to samtools
  type: string
  inputBinding:
    prefix: --samtoolspath
- id: base_composition
  doc: basecomposition
  type: boolean
  inputBinding:
    prefix: --basecomposition
- id: refseq
  doc: refseq
  type: string
  inputBinding:
    prefix: --refseq
- id: estimate
  doc: two-terminus estimate of contamination
  type: boolean
  inputBinding:
    prefix: --estimate
- id: estimate_base
  doc: position of base used fortwo-terminus estimate of contamination
  type: string
  inputBinding:
    prefix: --estimatebase
- id: basic
  doc: only output reads with a C>T mismatch this many basepairs from the 5' end
  type: string
  inputBinding:
    prefix: --basic
- id: pm_dp_param
  doc: parameter p in geometric probability distribution of PMD
  type: string
  inputBinding:
    prefix: --PMDpparam
- id: pmd_constant
  doc: constant C in geometric probability distribution of PMD
  type: string
  inputBinding:
    prefix: --PMDconstant
- id: polymorphism_ancient
  doc: True biological polymorphism between the ancient individual and the reference
    sequence
  type: string
  inputBinding:
    prefix: --polymorphism_ancient
- id: polymorphism_contamination
  doc: True biological polymorphism between the contaminants and the reference sequence
  type: string
  inputBinding:
    prefix: --polymorphism_contamination
- id: dry
  doc: print SAM input without any filters
  type: boolean
  inputBinding:
    prefix: --dry
- id: number
  doc: stop after these many reads have been processed
  type: long
  inputBinding:
    prefix: --number
- id: chromosome
  doc: only process data from this chromosome
  type: string
  inputBinding:
    prefix: --chromosome
- id: perc_identity
  doc: only output sequences with percent identity above this threshold
  type: string
  inputBinding:
    prefix: --perc_identity
- id: require_mapq
  doc: only process sequences with mapping quality at least this great
  type: string
  inputBinding:
    prefix: --requiremapq
- id: read_length
  doc: only process sequences with this read length
  type: string
  inputBinding:
    prefix: --readlength
- id: maxlength
  doc: only process sequences with max this read length
  type: long
  inputBinding:
    prefix: --maxlength
- id: minlength
  doc: only process sequences with min this read length
  type: long
  inputBinding:
    prefix: --minlength
- id: max_gc
  doc: only process sequences with max this GC content of the aligning reference sequence
  type: long
  inputBinding:
    prefix: --maxGC
- id: ming_c
  doc: only process sequences with min this GC content of the aligning reference sequence
  type: long
  inputBinding:
    prefix: --minGC
- id: require_base_q
  doc: only process bases with base quality at least this great
  type: string
  inputBinding:
    prefix: --requirebaseq
- id: threshold
  doc: only output sequences with PMD score above this threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: upper_threshold
  doc: only output sequences with PMD score below this threshold
  type: string
  inputBinding:
    prefix: --upperthreshold
- id: udg_plus
  doc: only use Cs and Gs in CpG context
  type: boolean
  inputBinding:
    prefix: --UDGplus
- id: no_cpg
  doc: dont use Cs and Gs in CpG context
  type: boolean
  inputBinding:
    prefix: --noCpG
- id: udg_half
  doc: only use Cs and Gs in CpG context, the first and last base are used regardless
    of dinucleotide context
  type: boolean
  inputBinding:
    prefix: --UDGhalf
- id: udg_minus
  doc: use all bases (placeholder)
  type: boolean
  inputBinding:
    prefix: --UDGminus
- id: verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: header
  doc: output the SAM header
  type: boolean
  inputBinding:
    prefix: --header
- id: writes_am_field
  doc: add 'DS:Z:<PMDS>' field to SAM output, will overwrite if already present
  type: boolean
  inputBinding:
    prefix: --writesamfield
- id: stats
  doc: output summarizing statistics to stderr
  type: boolean
  inputBinding:
    prefix: --stats
- id: debug
  doc: show additional information for debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: print_ds
  doc: print PMD scores
  type: boolean
  inputBinding:
    prefix: --printDS
- id: print_alignments
  doc: print human readable alignments
  type: boolean
  inputBinding:
    prefix: --printalignments
- id: platypus
  doc: output big list of base frequencies for platypus
  type: boolean
  inputBinding:
    prefix: --platypus
- id: deamination
  doc: output base frequencies in the read at positions where there are C or G in
    the reference
  type: boolean
  inputBinding:
    prefix: --deamination
- id: include_deamination
  doc: treat possibly deaminated T>C and A>G pairs as mismatches in calculation of
    percent identity
  type: boolean
  inputBinding:
    prefix: --include_deamination
- id: include_indels
  doc: treat insertions and deletions as mismatches in calculation of percent identity
  type: boolean
  inputBinding:
    prefix: --include_indels
- id: include_unknown
  doc: treat Ns in either read or reference as mismatch in calculation of percent
    identity
  type: boolean
  inputBinding:
    prefix: --include_unknown
outputs: []
cwlVersion: v1.1
baseCommand:
- pmdtools_mod

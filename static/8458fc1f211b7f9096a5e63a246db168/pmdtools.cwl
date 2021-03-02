class: CommandLineTool
id: pmdtools.cwl
inputs:
- id: in_adjusts_s
  doc: "strand orientation aware penalization of base\nqualities for single stranded\
    \ libraries (use with\n--CpG for udg-treated ss libs)"
  type: boolean?
  inputBinding:
    prefix: --adjustss
- id: in_number
  doc: stop after these many reads have been processed
  type: long?
  inputBinding:
    prefix: --number
- id: in_chromosome
  doc: only process data from this chromosome
  type: string?
  inputBinding:
    prefix: --chromosome
- id: in_require_mapq
  doc: "only process sequences with mapping quality at least\nthis great"
  type: string?
  inputBinding:
    prefix: --requiremapq
- id: in_read_length
  doc: only process sequences with this read length
  type: long?
  inputBinding:
    prefix: --readlength
- id: in_maxlength
  doc: only process sequences with max this read length
  type: long?
  inputBinding:
    prefix: --maxlength
- id: in_minlength
  doc: only process sequences with min this read length
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_max_gc
  doc: "only process sequences with max this GC content of the\naligning reference\
    \ sequence"
  type: long?
  inputBinding:
    prefix: --maxGC
- id: in_ming_c
  doc: "only process sequences with min this GC content of the\naligning reference\
    \ sequence"
  type: long?
  inputBinding:
    prefix: --minGC
- id: in_require_base_q
  doc: "only process bases with base quality at least this\ngreat"
  type: string?
  inputBinding:
    prefix: --requirebaseq
- id: in_deamination
  doc: "output base frequencies in the read at positions where\nthere are C or G in\
    \ the reference"
  type: boolean?
  inputBinding:
    prefix: --deamination
- id: in_udg_plus
  doc: only use Cs and Gs in CpG context
  type: boolean?
  inputBinding:
    prefix: --UDGplus
- id: in_ss
  doc: single stranded
  type: boolean?
  inputBinding:
    prefix: --ss
- id: in_pm_dsp_rim
  doc: PMDSprim
  type: boolean?
  inputBinding:
    prefix: --PMDSprim
- id: in_udg_minus
  doc: use all bases (placeholder)
  type: boolean?
  inputBinding:
    prefix: --UDGminus
- id: in_ecoli_cpg
  doc: "Ecoli CpG (first 5' position and two 3' positions and\nCpG context)"
  type: boolean?
  inputBinding:
    prefix: --EcoliCpG
- id: in_ecoli
  doc: Ecoli (first 5' position and two 3' positions only)
  type: boolean?
  inputBinding:
    prefix: --Ecoli
- id: in_masks_s
  doc: "mask to lower case bases where ref is C (taking strand\ninto account)"
  type: boolean?
  inputBinding:
    prefix: --maskss
- id: in_leipzig_simple
  doc: Leipzigsimple
  type: boolean?
  inputBinding:
    prefix: --Leipzigsimple
- id: in_no_cpg
  doc: dont use Cs and Gs in CpG context
  type: boolean?
  inputBinding:
    prefix: --noCpG
- id: in_first
  doc: "outputs the deamination rate at the first position\nonly, but with a standard\
    \ error"
  type: boolean?
  inputBinding:
    prefix: --first
- id: in_range
  doc: "output deamination patterns for this many positions\nfrom the sequence terminus\
    \ (default=30)"
  type: long?
  inputBinding:
    prefix: --range
- id: in_polymorphism_ancient
  doc: "True biological polymorphism between the ancient\nindividual and the reference\
    \ sequence"
  type: string?
  inputBinding:
    prefix: --polymorphism_ancient
- id: in_polymorphism_contamination
  doc: "True biological polymorphism between the contaminants\nand the reference sequence"
  type: string?
  inputBinding:
    prefix: --polymorphism_contamination
- id: in_pm_dp_param
  doc: "parameter p in geometric probability distribution of\nPMD"
  type: string?
  inputBinding:
    prefix: --PMDpparam
- id: in_pmd_constant
  doc: "constant C in geometric probability distribution of\nPMD"
  type: string?
  inputBinding:
    prefix: --PMDconstant
- id: in_no_clips
  doc: no clips
  type: boolean?
  inputBinding:
    prefix: --noclips
- id: in_no_indels
  doc: no indels
  type: boolean?
  inputBinding:
    prefix: --noindels
- id: in_only_clips
  doc: only clips
  type: boolean?
  inputBinding:
    prefix: --onlyclips
- id: in_only_deletions
  doc: only deletions
  type: boolean?
  inputBinding:
    prefix: --onlydeletions
- id: in_only_insertions
  doc: only insertions
  type: boolean?
  inputBinding:
    prefix: --onlyinsertions
- id: in_no_deletions
  doc: no deletions
  type: boolean?
  inputBinding:
    prefix: --nodeletions
- id: in_no_insertions
  doc: no insertions
  type: boolean?
  inputBinding:
    prefix: --noinsertions
- id: in_not_reverse
  doc: no reverse complement alignments
  type: boolean?
  inputBinding:
    prefix: --notreverse
- id: in_print_ds
  doc: print PMD scores
  type: boolean?
  inputBinding:
    prefix: --printDS
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_print_alignments
  doc: print human readable alignments
  type: boolean?
  inputBinding:
    prefix: --printalignments
- id: in_mask_terminal_deamination_s
  doc: mask terminal deaminations
  type: string?
  inputBinding:
    prefix: --maskterminaldeaminations
- id: in_mask_terminal_bases
  doc: mask terminal bases
  type: string?
  inputBinding:
    prefix: --maskterminalbases
- id: in_threshold
  doc: "only output sequences with PMD score above this\nthreshold"
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_upper_threshold
  doc: "only output sequences with PMD score below this\nthreshold"
  type: string?
  inputBinding:
    prefix: --upperthreshold
- id: in_perc_identity
  doc: "only output sequences with percent identity above this\nthreshold"
  type: string?
  inputBinding:
    prefix: --perc_identity
- id: in_adjust_base_q
  doc: "apply PMD-aware adjustment of base quality scores\nspecific to C>T and G>A\
    \ mismatches to the reference"
  type: boolean?
  inputBinding:
    prefix: --adjustbaseq
- id: in_adjust_base_q_all
  doc: "apply PMD-aware adjustment of base quality scores\nregardless of observed\
    \ bases"
  type: boolean?
  inputBinding:
    prefix: --adjustbaseq_all
- id: in_dry
  doc: print SAM input without any filters
  type: boolean?
  inputBinding:
    prefix: --dry
- id: in_sam_tools_path
  doc: full path to samtools
  type: File?
  inputBinding:
    prefix: --samtoolspath
- id: in_base_composition
  doc: basecomposition
  type: boolean?
  inputBinding:
    prefix: --basecomposition
- id: in_estimate
  doc: two-terminus estimate of contamination
  type: boolean?
  inputBinding:
    prefix: --estimate
- id: in_estimate_base
  doc: "position of base used fortwo-terminus estimate of\ncontamination"
  type: string?
  inputBinding:
    prefix: --estimatebase
- id: in_platypus
  doc: output big list of base frequencies for platypus
  type: boolean?
  inputBinding:
    prefix: --platypus
- id: in_writes_am_field
  doc: "add 'DS:Z:<PMDS>' field to SAM output, will overwrite\nif already present"
  type: boolean?
  inputBinding:
    prefix: --writesamfield
- id: in_basic
  doc: "only output reads with a C>T mismatch this many\nbasepairs from the 5' end"
  type: long?
  inputBinding:
    prefix: --basic
- id: in_terminal
  doc: "only output reads with a C>T mismatch in either 3' or\n5' end"
  type: boolean?
  inputBinding:
    prefix: --terminal
- id: in_stats
  doc: output summarizing statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --stats
- id: in_pm_dsp_rim_threshold
  doc: --UDGhalf             only use Cs and Gs in CpG context, the first and last
  type: string
  inputBinding:
    position: 0
- id: in_custom_terminus
  doc: --flagss              flag SNPs (taking strand into account)
  type: string
  inputBinding:
    position: 0
- id: in_refseq
  doc: --header              output the SAM header
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pmdtools

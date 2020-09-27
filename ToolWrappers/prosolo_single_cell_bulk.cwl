class: CommandLineTool
id: prosolo_single_cell_bulk.cwl
inputs:
- id: in_exclusive_end
  doc: "Assume that the END tag is exclusive (i.e. it points to the position after\
    \ the\nvariant). This is needed, e.g., for DELLY."
  type: boolean
  inputBinding:
    prefix: --exclusive-end
- id: in_omit_fragment_evidence
  doc: "Omit evidence consisting of read pairs with unexpected insert size (insert\
    \ size\nparameters will be ignored)."
  type: boolean
  inputBinding:
    prefix: --omit-fragment-evidence
- id: in_omit_indels
  doc: Don't call indels.
  type: boolean
  inputBinding:
    prefix: --omit-indels
- id: in_omit_sn_vs
  doc: Don't call SNVs.
  type: boolean
  inputBinding:
    prefix: --omit-snvs
- id: in_bulk_max_n
  doc: "Maximum number of (theoretical) reads to work with in the bulk background,\
    \ in\ncase the actual read count for a variant is higher (all read information\
    \ will\nbe used, but probabilities will only be computed for all discrete allele\n\
    frequencies allowed by the maximum read count provided here). The code will\n\
    work with any number above bulk-min-n, but we use the cap of the currently\nused\
    \ Lodato amplification bias model for the single cell sample as the\ndefault.\
    \ [default: 100]"
  type: long
  inputBinding:
    prefix: --bulk-max-n
- id: in_bulk_min_n
  doc: "Minimum number of (theoretical) reads to work with in the bulk background,\
    \ in\ncase the actual read count for a variant site is lower (in this case,\n\
    probabilities will be computed for all discrete allele frequencies allowed by\n\
    the minimum read count provided here). The code will work with a minimum of 2,\n\
    but for a more even sampling of Event spaces, the default is at 8. [default:\n\
    8]"
  type: long
  inputBinding:
    prefix: --bulk-min-n
- id: in_candidates
  doc: VCF/BCF file to process (if omitted, read from STDIN).
  type: File
  inputBinding:
    prefix: --candidates
- id: in_in_del_window
  doc: "Number of bases to consider left and right of indel breakpoint when\ncalculating\
    \ read support. This number should not be too large in order to\navoid biases\
    \ caused by other close variants. [default: 100]"
  type: long
  inputBinding:
    prefix: --indel-window
- id: in_max_in_del_len
  doc: Omit longer indels when calling [1000].
  type: long
  inputBinding:
    prefix: --max-indel-len
- id: in_obs
  doc: "Optional path where read observations shall be written to. The resulting file\n\
    contains a line for each observation with tab-separated values."
  type: File
  inputBinding:
    prefix: --obs
- id: in_output
  doc: BCF file that shall contain the results (if omitted, write to STDOUT).
  type: File
  inputBinding:
    prefix: --output
- id: in_pile_up_window
  doc: "Window to investigate for evidence left and right of each variant. [default:\n\
    2500]"
  type: long
  inputBinding:
    prefix: --pileup-window
- id: in_ploidy
  doc: 'General ploidy of sampled individual. [default: 2]'
  type: long
  inputBinding:
    prefix: --ploidy
- id: in_spurious_del_ext_rate
  doc: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\n\
    Schirmer et al. BMC Bioinformatics 2016). [default: 0.0]"
  type: double
  inputBinding:
    prefix: --spurious-delext-rate
- id: in_spurious_in_sext_rate
  doc: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\n\
    Schirmer et al. BMC Bioinformatics 2016) [0.0]. [default: 0.0]"
  type: double
  inputBinding:
    prefix: --spurious-insext-rate
- id: in_spurious_del_rate
  doc: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see\n\
    Schirmer et al. BMC Bioinformatics 2016). [default: 5.1e-6]"
  type: double
  inputBinding:
    prefix: --spurious-del-rate
- id: in_spurious_ins_rate
  doc: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see\n\
    Schirmer et al. BMC Bioinformatics 2016). [default: 2.8e-6]"
  type: double
  inputBinding:
    prefix: --spurious-ins-rate
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_single_cell
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bulk
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prosolo
- single-cell-bulk

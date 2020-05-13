class: CommandLineTool
id: prosolo_single_cell_bulk.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: single_cell
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: bulk
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: exclusive_end
  doc: Assume that the END tag is exclusive (i.e. it points to the position after
    the variant). This is needed, e.g., for DELLY.
  type: boolean
  inputBinding:
    prefix: --exclusive-end
- id: omit_fragment_evidence
  doc: Omit evidence consisting of read pairs with unexpected insert size (insert
    size parameters will be ignored).
  type: boolean
  inputBinding:
    prefix: --omit-fragment-evidence
- id: omit_indels
  doc: Don't call indels.
  type: boolean
  inputBinding:
    prefix: --omit-indels
- id: omit_sn_vs
  doc: Don't call SNVs.
  type: boolean
  inputBinding:
    prefix: --omit-snvs
- id: bulk_max_n
  doc: 'Maximum number of (theoretical) reads to work with in the bulk background,
    in case the actual read count for a variant is higher (all read information will
    be used, but probabilities will only be computed for all discrete allele frequencies
    allowed by the maximum read count provided here). The code will work with any
    number above bulk-min-n, but we use the cap of the currently used Lodato amplification
    bias model for the single cell sample as the default. [default: 100]'
  type: long
  inputBinding:
    prefix: --bulk-max-n
- id: bulk_min_n
  doc: 'Minimum number of (theoretical) reads to work with in the bulk background,
    in case the actual read count for a variant site is lower (in this case, probabilities
    will be computed for all discrete allele frequencies allowed by the minimum read
    count provided here). The code will work with a minimum of 2, but for a more even
    sampling of Event spaces, the default is at 8. [default: 8]'
  type: long
  inputBinding:
    prefix: --bulk-min-n
- id: candidates
  doc: VCF/BCF file to process (if omitted, read from STDIN).
  type: File
  inputBinding:
    prefix: --candidates
- id: in_del_window
  doc: 'Number of bases to consider left and right of indel breakpoint when calculating
    read support. This number should not be too large in order to avoid biases caused
    by other close variants. [default: 100]'
  type: long
  inputBinding:
    prefix: --indel-window
- id: max_in_del_len
  doc: Omit longer indels when calling [1000].
  type: long
  inputBinding:
    prefix: --max-indel-len
- id: obs
  doc: Optional path where read observations shall be written to. The resulting file
    contains a line for each observation with tab-separated values.
  type: File
  inputBinding:
    prefix: --obs
- id: output
  doc: BCF file that shall contain the results (if omitted, write to STDOUT).
  type: File
  inputBinding:
    prefix: --output
- id: pile_up_window
  doc: 'Window to investigate for evidence left and right of each variant. [default:
    2500]'
  type: long
  inputBinding:
    prefix: --pileup-window
- id: ploidy
  doc: 'General ploidy of sampled individual. [default: 2]'
  type: long
  inputBinding:
    prefix: --ploidy
- id: spurious_del_ext_rate
  doc: 'Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see
    Schirmer et al. BMC Bioinformatics 2016). [default: 0.0]'
  type: double
  inputBinding:
    prefix: --spurious-delext-rate
- id: spurious_in_sext_rate
  doc: 'Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see
    Schirmer et al. BMC Bioinformatics 2016) [0.0]. [default: 0.0]'
  type: double
  inputBinding:
    prefix: --spurious-insext-rate
- id: spurious_del_rate
  doc: 'Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see Schirmer
    et al. BMC Bioinformatics 2016). [default: 5.1e-6]'
  type: double
  inputBinding:
    prefix: --spurious-del-rate
- id: spurious_ins_rate
  doc: 'Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see
    Schirmer et al. BMC Bioinformatics 2016). [default: 2.8e-6]'
  type: double
  inputBinding:
    prefix: --spurious-ins-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- prosolo
- single-cell-bulk

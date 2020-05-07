class: CommandLineTool
id: prosic_call_tumor_normal.cwl
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
- id: tumor
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: normal
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
- id: flat_priors
  doc: Ignore the prior model and use flat priors instead.
  type: boolean
  inputBinding:
    prefix: --flat-priors
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
- id: candidates
  doc: VCF/BCF file to process (if omitted, read from STDIN).
  type: File
  inputBinding:
    prefix: --candidates
- id: deletion_factor
  doc: 'Factor of deletion mutation rate relative to SNV mutation rate (0.03 according
    to Hodkinson et al. Nature Reviews Genetics 2011). [default: 0.03]'
  type: double
  inputBinding:
    prefix: --deletion-factor
- id: eff_mut
  doc: 'Effective SNV mutation rate of tumor sample (should be estimated from somatic
    SNVs). [default: 2000.0]'
  type: double
  inputBinding:
    prefix: --effmut
- id: het
  doc: 'Expected heterozygosity of normal sample. [default: 1.25E-4]'
  type: double
  inputBinding:
    prefix: --het
- id: in_del_window
  doc: 'Number of bases to consider left and right of indel breakpoint when calculating
    read support. This number should not be too large in order to avoid biases caused
    by other close variants. [default: 100]'
  type: long
  inputBinding:
    prefix: --indel-window
- id: insertion_factor
  doc: 'Factor of insertion mutation rate relative to SNV mutation rate (0.01 according
    to Hodkinson et al. Nature Reviews Genetics 2011). [default: 0.01]'
  type: double
  inputBinding:
    prefix: --insertion-factor
- id: max_in_del_len
  doc: 'Omit longer indels when calling. [default: 1000]'
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
  doc: 'Average ploidy of tumor and normal sample. [default: 2]'
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
- id: spurious_i_size_rate
  doc: 'Rate of wrongly reported insert size abberations (should be set depending
    on mapper, BWA: 0.01332338, LASER: 0.05922201). [default: 0.0]'
  type: double
  inputBinding:
    prefix: --spurious-isize-rate
- id: purity
  doc: 'Purity of tumor sample. [default: 1.0]'
  type: double
  inputBinding:
    prefix: --purity
outputs: []
cwlVersion: v1.1
baseCommand:
- prosic
- call-tumor-normal

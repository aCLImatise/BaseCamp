class: CommandLineTool
id: varlociraptor_preprocess_variants.cwl
inputs:
- id: reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: omit_indels
  doc: Don't call Indels.
  type: boolean
  inputBinding:
    prefix: --omit-indels
- id: omit_sn_vs
  doc: Don't call SNVs.
  type: boolean
  inputBinding:
    prefix: --omit-snvs
- id: alignment_properties
  doc: Alignment properties JSON file for sample. If not provided, properties will
    be estimated from the given BAM file.
  type: string
  inputBinding:
    prefix: --alignment-properties
- id: bam
  doc: BAM file with aligned reads from a single sample.
  type: string
  inputBinding:
    prefix: --bam
- id: candidates
  doc: VCF/BCF file to process (if omitted, read from STDIN).
  type: string
  inputBinding:
    prefix: --candidates
- id: in_del_window
  doc: 'Number of bases to consider left and right of indel breakpoint when calculating
    read support. This number should not be too large in order to avoid biases caused
    by other close variants. Currently implemented maximum value is 64. [default:
    64]'
  type: string
  inputBinding:
    prefix: --indel-window
- id: max_depth
  doc: 'Maximum number of observations to use for calling. If locus is exceeding this
    number, downsampling is performed. [default: 200]'
  type: long
  inputBinding:
    prefix: --max-depth
- id: max_in_del_len
  doc: 'Omit longer indels when calling. [default: 1000]'
  type: long
  inputBinding:
    prefix: --max-indel-len
- id: output
  doc: BCF file that shall contain the results (if omitted, write to STDOUT).
  type: string
  inputBinding:
    prefix: --output
- id: stranded_ness
  doc: 'Strandedness of sequencing protocol in case of paired-end (opposite strand
    as usual or same strand as with mate-pair sequencing.) [default: opposite]  [possible
    values: opposite, same]'
  type: string
  inputBinding:
    prefix: --strandedness
- id: spurious_del_rate
  doc: 'Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see Schirmer
    et al. BMC Bioinformatics 2016). [default: 5.1e-6]'
  type: string
  inputBinding:
    prefix: --spurious-del-rate
- id: spurious_del_ext_rate
  doc: 'Extension rate of spurious deletions by the sequencer (Illumina: 0.0, see
    Schirmer et al. BMC Bioinformatics 2016) [default: 0.0]'
  type: string
  inputBinding:
    prefix: --spurious-delext-rate
- id: spurious_ins_rate
  doc: 'Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see
    Schirmer et al. BMC Bioinformatics 2016). [default: 2.8e-6]'
  type: string
  inputBinding:
    prefix: --spurious-ins-rate
- id: spurious_in_sext_rate
  doc: 'Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see
    Schirmer et al. BMC Bioinformatics 2016) [default: 0.0]'
  type: string
  inputBinding:
    prefix: --spurious-insext-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- preprocess
- variants

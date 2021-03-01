class: CommandLineTool
id: varlociraptor_preprocess_variants.cwl
inputs:
- id: in_omit_insert_size
  doc: "Do not consider insert size when calculating support for a variant. Use this\
    \ flag when\nprocessing amplicon data, where indels do not impact the observed\
    \ insert size"
  type: boolean?
  inputBinding:
    prefix: --omit-insert-size
- id: in_alignment_properties
  doc: "Alignment properties JSON file for sample. If not provided, properties will\
    \ be estimated from the given BAM\nfile."
  type: File?
  inputBinding:
    prefix: --alignment-properties
- id: in_bam
  doc: BAM file with aligned reads from a single sample.
  type: File?
  inputBinding:
    prefix: --bam
- id: in_candidates
  doc: VCF/BCF file to process (if omitted, read from STDIN).
  type: File?
  inputBinding:
    prefix: --candidates
- id: in_max_depth
  doc: "Maximum number of observations to use for calling. If locus is exceeding this\
    \ number, downsampling is\nperformed. [default: 200]"
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_output
  doc: BCF file that shall contain the results (if omitted, write to STDOUT).
  type: File?
  inputBinding:
    prefix: --output
- id: in_stranded_ness
  doc: "Strandedness of sequencing protocol in case of paired-end (opposite strand\
    \ as usual or same strand as with\nmate-pair sequencing.) [default: opposite]\
    \  [possible values: opposite, same]"
  type: string?
  inputBinding:
    prefix: --strandedness
- id: in_in_del_window
  doc: "Number of bases to consider left and right of breakpoint when calculating\
    \ read support. Currently\nimplemented maximum value is 64. [default: 64]"
  type: long?
  inputBinding:
    prefix: --indel-window
- id: in_spurious_del_rate
  doc: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see Schirmer\
    \ et al. BMC Bioinformatics\n2016). [default: 5.1e-6]"
  type: double?
  inputBinding:
    prefix: --spurious-del-rate
- id: in_spurious_del_ext_rate
  doc: "Extension rate of spurious deletions by the sequencer (Illumina: 0.0, see\
    \ Schirmer et al. BMC Bioinformatics\n2016) [default: 0.0]"
  type: double?
  inputBinding:
    prefix: --spurious-delext-rate
- id: in_spurious_ins_rate
  doc: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see\
    \ Schirmer et al. BMC Bioinformatics\n2016). [default: 2.8e-6]"
  type: double?
  inputBinding:
    prefix: --spurious-ins-rate
- id: in_spurious_in_sext_rate
  doc: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\
    \ Schirmer et al. BMC\nBioinformatics 2016) [default: 0.0]"
  type: double?
  inputBinding:
    prefix: --spurious-insext-rate
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- preprocess
- variants

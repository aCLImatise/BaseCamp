class: CommandLineTool
id: configManta.py.cwl
inputs:
- id: normal_bam
  doc: Normal sample BAM or CRAM file. May be specified more than once, multiple inputs
    will be treated as each BAM file representing a different sample. [optional] (no
    default)
  type: File
  inputBinding:
    prefix: --normalBam
- id: tumour_bam
  doc: Tumor sample BAM or CRAM file. Only up to one tumor bam file accepted. [optional]
    (no default)
  type: File
  inputBinding:
    prefix: --tumourBam
- id: exo_me
  doc: 'Set options for WES input: turn off depth filters'
  type: boolean
  inputBinding:
    prefix: --exome
- id: rna
  doc: Set options for RNA-Seq input. Must specify exactly one bam input file
  type: boolean
  inputBinding:
    prefix: --rna
- id: un_stranded_rna
  doc: 'Set if RNA-Seq input is unstranded: Allows splice- junctions on either strand'
  type: boolean
  inputBinding:
    prefix: --unstrandedRNA
- id: reference_fast_a
  doc: samtools-indexed reference fasta file [required]
  type: File
  inputBinding:
    prefix: --referenceFasta
- id: run_dir
  doc: 'Name of directory to be created where all workflow scripts and output will
    be written. Each analysis requires a separate directory. (default: MantaWorkflow)'
  type: string
  inputBinding:
    prefix: --runDir
- id: call_regions
  doc: 'Optionally provide a bgzip-compressed/tabix-indexed BED file containing the
    set of regions to call. No VCF output will be provided outside of these regions.
    The full genome will still be used to estimate statistics from the input (such
    as expected fragment size distribution). Only one BED file may be specified. (default:
    call the entire genome)'
  type: File
  inputBinding:
    prefix: --callRegions
outputs: []
cwlVersion: v1.1
baseCommand:
- configManta.py

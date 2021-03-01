class: CommandLineTool
id: configManta.py.cwl
inputs:
- id: in_config
  doc: "provide a configuration file to override defaults in\nglobal config file (/usr/local/share/manta-1.6.0-0/bin\n\
    /configManta.py.ini)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_all_help
  doc: show all extended/hidden options
  type: boolean?
  inputBinding:
    prefix: --allHelp
- id: in_normal_bam
  doc: "Normal sample BAM or CRAM file. May be specified more\nthan once, multiple\
    \ inputs will be treated as each BAM\nfile representing a different sample. [optional]\
    \ (no\ndefault)"
  type: File?
  inputBinding:
    prefix: --normalBam
- id: in_tumour_bam
  doc: "Tumor sample BAM or CRAM file. Only up to one tumor\nbam file accepted. [optional]\
    \ (no default)"
  type: File?
  inputBinding:
    prefix: --tumourBam
- id: in_exo_me
  doc: 'Set options for WES input: turn off depth filters'
  type: boolean?
  inputBinding:
    prefix: --exome
- id: in_rna
  doc: "Set options for RNA-Seq input. Must specify exactly\none bam input file"
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_un_stranded_rna
  doc: "Set if RNA-Seq input is unstranded: Allows splice-\njunctions on either strand"
  type: boolean?
  inputBinding:
    prefix: --unstrandedRNA
- id: in_reference_fast_a
  doc: samtools-indexed reference fasta file [required]
  type: File?
  inputBinding:
    prefix: --referenceFasta
- id: in_run_dir
  doc: "Name of directory to be created where all workflow\nscripts and output will\
    \ be written. Each analysis\nrequires a separate directory. (default:\nMantaWorkflow)"
  type: Directory?
  inputBinding:
    prefix: --runDir
- id: in_call_regions
  doc: "Optionally provide a bgzip-compressed/tabix-indexed\nBED file containing the\
    \ set of regions to call. No VCF\noutput will be provided outside of these regions.\
    \ The\nfull genome will still be used to estimate statistics\nfrom the input (such\
    \ as expected fragment size\ndistribution). Only one BED file may be specified.\n\
    (default: call the entire genome)"
  type: File?
  inputBinding:
    prefix: --callRegions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_dir
  doc: "Name of directory to be created where all workflow\nscripts and output will\
    \ be written. Each analysis\nrequires a separate directory. (default:\nMantaWorkflow)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_run_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- configManta.py

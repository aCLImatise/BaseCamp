class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BuildTrees.py.cwl
inputs:
- id: list_tab_delimited
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: format
  doc: 'Specify input and output format. (default: airr)'
  type: string
  inputBinding:
    prefix: --format
- id: collapse
  doc: 'If specified, collapse identical sequences before exporting to fasta. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --collapse
- id: nc_dr_three
  doc: 'If specified, remove CDR3 from all sequences. (default: False)'
  type: boolean
  inputBinding:
    prefix: --ncdr3
- id: n_mask
  doc: 'If specified, do not attempt to mask split codons. (default: False)'
  type: boolean
  inputBinding:
    prefix: --nmask
- id: md
  doc: 'List of fields to containing metadata to include in output fasta file sequence
    headers. (default: None)'
  type: string[]
  inputBinding:
    prefix: --md
- id: clones
  doc: 'List of clone IDs to output, if specified. (default: None)'
  type: string[]
  inputBinding:
    prefix: --clones
- id: min_seq
  doc: 'Minimum number of data sequences. Any clones with fewer than the specified
    number of sequences will be excluded. (default: 1)'
  type: long
  inputBinding:
    prefix: --minseq
- id: sample
  doc: 'Depth of reads to be subsampled (before deduplication). (default: -1)'
  type: string
  inputBinding:
    prefix: --sample
- id: append
  doc: 'List of columns to append to sequence ID to ensure uniqueness. (default: None)'
  type: string[]
  inputBinding:
    prefix: --append
- id: ig_phy_ml
  doc: 'Run IgPhyML on output? (default: False)'
  type: boolean
  inputBinding:
    prefix: --igphyml
- id: nproc
  doc: 'Number of threads to parallelize IgPhyML across. (default: 1)'
  type: string
  inputBinding:
    prefix: --nproc
- id: clean
  doc: 'Delete intermediate files? none: leave all intermediate files; all: delete
    all intermediate files. (default: none)'
  type: string
  inputBinding:
    prefix: --clean
- id: optimize
  doc: 'Optimize combination of topology (t) branch lengths (l) and parameters (r),
    or nothing (n), for IgPhyML. (default: lr)'
  type: string
  inputBinding:
    prefix: --optimize
- id: omega
  doc: 'Omega parameters to estimate for FWR,CDR respectively: e = estimate, ce =
    estimate + confidence interval (default: e,e)'
  type: string
  inputBinding:
    prefix: --omega
- id: kappa_parameters_estimate
  doc: 'Kappa parameters to estimate: e = estimate, ce = estimate + confidence interval
    (default: e)'
  type: string
  inputBinding:
    prefix: -t
- id: motifs
  doc: 'Which motifs to estimate mutability. (default: WRC_2:0,GYW_0:1,WA_1:2,TW_0:3,SYC_2:4,GRS_0:5)'
  type: string
  inputBinding:
    prefix: --motifs
- id: hotness
  doc: 'Mutability parameters to estimate: e = estimate, ce = estimate + confidence
    interval (default: e,e,e,e,e,e)'
  type: string
  inputBinding:
    prefix: --hotness
- id: o_format
  doc: 'IgPhyML output format. (default: tab)'
  type: string
  inputBinding:
    prefix: --oformat
- id: no_hlp
  doc: "Don't run HLP model? (default: False)"
  type: boolean
  inputBinding:
    prefix: --nohlp
- id: asr
  doc: 'Ancestral sequence reconstruction interval (0-1). (default: -1)'
  type: string
  inputBinding:
    prefix: --asr
- id: lineages
  doc: successfully processed records.
  type: string
  inputBinding:
    position: 0
- id: lineages_fail
  doc: database records failed processing.
  type: string
  inputBinding:
    position: 1
- id: ig_phy_ml_pass
  doc: parameter estimates and lineage trees from running IgPhyML, if specified
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- BuildTrees.py

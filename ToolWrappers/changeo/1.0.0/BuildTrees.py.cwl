class: CommandLineTool
id: BuildTrees.py.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_format
  doc: 'Specify input and output format. (default: airr)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_collapse
  doc: "If specified, collapse identical sequences before\nexporting to fasta. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --collapse
- id: in_nc_dr_three
  doc: "If specified, remove CDR3 from all sequences.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --ncdr3
- id: in_n_mask
  doc: "If specified, do not attempt to mask split codons.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --nmask
- id: in_md
  doc: "List of fields to containing metadata to include in\noutput fasta file sequence\
    \ headers. (default: None)"
  type: File?
  inputBinding:
    prefix: --md
- id: in_clones
  doc: "List of clone IDs to output, if specified. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --clones
- id: in_min_seq
  doc: "Minimum number of data sequences. Any clones with\nfewer than the specified\
    \ number of sequences will be\nexcluded. (default: 1)"
  type: long?
  inputBinding:
    prefix: --minseq
- id: in_sample
  doc: "Depth of reads to be subsampled (before\ndeduplication). (default: -1)"
  type: long?
  inputBinding:
    prefix: --sample
- id: in_append
  doc: "List of columns to append to sequence ID to ensure\nuniqueness. (default:\
    \ None)"
  type: string[]
  inputBinding:
    prefix: --append
- id: in_ig_phy_ml
  doc: 'Run IgPhyML on output? (default: False)'
  type: boolean?
  inputBinding:
    prefix: --igphyml
- id: in_nproc
  doc: "Number of threads to parallelize IgPhyML across.\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_clean
  doc: "Delete intermediate files? none: leave all\nintermediate files; all: delete\
    \ all intermediate\nfiles. (default: none)"
  type: string?
  inputBinding:
    prefix: --clean
- id: in_optimize
  doc: "Optimize combination of topology (t) branch lengths\n(l) and parameters (r),\
    \ or nothing (n), for IgPhyML.\n(default: lr)"
  type: string?
  inputBinding:
    prefix: --optimize
- id: in_omega
  doc: "Omega parameters to estimate for FWR,CDR respectively:\ne = estimate, ce =\
    \ estimate + confidence interval\n(default: e,e)"
  type: string?
  inputBinding:
    prefix: --omega
- id: in_kappa_parameters_estimate
  doc: "Kappa parameters to estimate: e = estimate, ce =\nestimate + confidence interval\
    \ (default: e)"
  type: string?
  inputBinding:
    prefix: -t
- id: in_motifs
  doc: "Which motifs to estimate mutability. (default:\nWRC_2:0,GYW_0:1,WA_1:2,TW_0:3,SYC_2:4,GRS_0:5)"
  type: long?
  inputBinding:
    prefix: --motifs
- id: in_hotness
  doc: "Mutability parameters to estimate: e = estimate, ce =\nestimate + confidence\
    \ interval (default: e,e,e,e,e,e)"
  type: string?
  inputBinding:
    prefix: --hotness
- id: in_o_format
  doc: 'IgPhyML output format. (default: tab)'
  type: string?
  inputBinding:
    prefix: --oformat
- id: in_no_hlp
  doc: "Don't run HLP model? (default: False)"
  type: boolean?
  inputBinding:
    prefix: --nohlp
- id: in_asr
  doc: "Ancestral sequence reconstruction interval (0-1).\n(default: -1)"
  type: long?
  inputBinding:
    prefix: --asr
- id: in_lineages
  doc: successfully processed records.
  type: string
  inputBinding:
    position: 0
- id: in_lineages_fail
  doc: database records failed processing.
  type: string
  inputBinding:
    position: 1
- id: in_ig_phy_ml_pass
  doc: parameter estimates and lineage trees from running IgPhyML, if specified
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_md
  doc: "List of fields to containing metadata to include in\noutput fasta file sequence\
    \ headers. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_md)
hints: []
cwlVersion: v1.1
baseCommand:
- BuildTrees.py

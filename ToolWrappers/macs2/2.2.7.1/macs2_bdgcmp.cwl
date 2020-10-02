class: CommandLineTool
id: macs2_bdgcmp.cwl
inputs:
- id: in_t_file
  doc: "Treatment bedGraph file, e.g. *_treat_pileup.bdg from\nMACSv2. REQUIRED"
  type: File
  inputBinding:
    prefix: --tfile
- id: in_c_file
  doc: "Control bedGraph file, e.g. *_control_lambda.bdg from\nMACSv2. REQUIRED"
  type: File
  inputBinding:
    prefix: --cfile
- id: in_scaling_factor
  doc: "Scaling factor for treatment and control track. Keep\nit as 1.0 or default\
    \ in most cases. Set it ONLY while\nyou have SPMR output from MACS2 callpeak,\
    \ and plan to\ncalculate scores as MACS2 callpeak module. If you want\nto simulate\
    \ 'callpeak' w/o '--to-large', calculate\neffective smaller sample size after\
    \ filtering redudant\nreads in million (e.g., put 31.415926 if effective\nreads\
    \ are 31,415,926) and input it for '-S'; for\n'callpeak --to-large', calculate\
    \ effective reads in\nlarger sample. DEFAULT: 1.0"
  type: long
  inputBinding:
    prefix: --scaling-factor
- id: in_pseudo_count
  doc: "The pseudocount used for calculating logLR, logFE or\nFE. The count will be\
    \ applied after normalization of\nsequencing depth. DEFAULT: 0.0, no pseudocount\
    \ is\napplied."
  type: double
  inputBinding:
    prefix: --pseudocount
- id: in_method_use_calculating
  doc: "[{ppois,qpois,subtract,logFE,FE,logLR,slogLR,max} ...], --method {ppois,qpois,subtract,logFE,FE,logLR,slogLR,max}\
    \ [{ppois,qpois,subtract,logFE,FE,logLR,slogLR,max} ...]\nMethod to use while\
    \ calculating a score in any bin by\ncomparing treatment value and control value.\
    \ Available\nchoices are: ppois, qpois, subtract, logFE, logLR, and\nslogLR. They\
    \ represent Poisson Pvalue (-log10(pvalue)\nform) using control as lambda and\
    \ treatment as\nobservation, q-value through a BH process for poisson\npvalues,\
    \ subtraction from treatment, linear scale fold\nenrichment, log10 fold enrichment(need\
    \ to set\npseudocount), log10 likelihood between ChIP-enriched\nmodel and open\
    \ chromatin model(need to set\npseudocount), symmetric log10 likelihood between\
    \ two\nChIP-enrichment models, or maximum value between the\ntwo tracks. Default\
    \ option is ppois."
  type: string
  inputBinding:
    prefix: -m
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_o_prefix
  doc: "The PREFIX of output bedGraph file to write scores. If\nit is given as A,\
    \ and method is 'ppois', output file\nwill be A_ppois.bdg. Mutually exclusive\
    \ with\n-o/--ofile."
  type: File
  inputBinding:
    prefix: --o-prefix
- id: in_ofile
  doc: "Output filename. Mutually exclusive with --o-prefix.\nThe number and the order\
    \ of arguments for --ofile must\nbe the same as for -m.\n"
  type: string[]
  inputBinding:
    prefix: --ofile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_o_prefix
  doc: "The PREFIX of output bedGraph file to write scores. If\nit is given as A,\
    \ and method is 'ppois', output file\nwill be A_ppois.bdg. Mutually exclusive\
    \ with\n-o/--ofile."
  type: File
  outputBinding:
    glob: $(inputs.in_o_prefix)
cwlVersion: v1.1
baseCommand:
- macs2
- bdgcmp

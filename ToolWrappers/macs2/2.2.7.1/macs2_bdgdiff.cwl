class: CommandLineTool
id: macs2_bdgdiff.cwl
inputs:
- id: in_tone
  doc: "MACS pileup bedGraph for condition 1. Incompatible\nwith callpeak --SPMR output.\
    \ REQUIRED"
  type: long
  inputBinding:
    prefix: --t1
- id: in_t_two
  doc: "MACS pileup bedGraph for condition 2. Incompatible\nwith callpeak --SPMR output.\
    \ REQUIRED"
  type: long
  inputBinding:
    prefix: --t2
- id: in_cone
  doc: "MACS control lambda bedGraph for condition 1.\nIncompatible with callpeak\
    \ --SPMR output. REQUIRED"
  type: long
  inputBinding:
    prefix: --c1
- id: in_c_two
  doc: "MACS control lambda bedGraph for condition 2.\nIncompatible with callpeak\
    \ --SPMR output. REQUIRED"
  type: long
  inputBinding:
    prefix: --c2
- id: in_cut_off
  doc: 'logLR cutoff. DEFAULT: 3 (likelihood ratio=1000)'
  type: long
  inputBinding:
    prefix: --cutoff
- id: in_min_len
  doc: "Minimum length of differential region. Try bigger\nvalue to remove small regions.\
    \ DEFAULT: 200"
  type: long
  inputBinding:
    prefix: --min-len
- id: in_max_gap
  doc: "Maximum gap to merge nearby differential regions.\nConsider a wider gap for\
    \ broad marks. Maximum gap\nshould be smaller than minimum length (-g). DEFAULT:\n\
    100"
  type: long
  inputBinding:
    prefix: --max-gap
- id: in_depth_one
  doc: "Sequencing depth (# of non-redundant reads in million)\nfor condition 1. It\
    \ will be used together with --d2.\nSee description for --d2 below for how to\
    \ assign them.\nDefault: 1"
  type: long
  inputBinding:
    prefix: --depth1
- id: in_depth_two
  doc: "Sequencing depth (# of non-redundant reads in million)\nfor condition 2. It\
    \ will be used together with --d1.\nDEPTH1 and DEPTH2 will be used to calculate\
    \ scaling\nfactor for each sample, to down-scale larger sample to\nthe level of\
    \ smaller one. For example, while comparing\n10 million condition 1 and 20 million\
    \ condition 2, use\n--d1 10 --d2 20, then pileup value in bedGraph for\ncondition\
    \ 2 will be divided by 2. Default: 1"
  type: long
  inputBinding:
    prefix: --depth2
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_o_prefix
  doc: "Output file prefix. Actual files will be named as\nPREFIX_cond1.bed, PREFIX_cond2.bed\
    \ and\nPREFIX_common.bed. Mutually exclusive with -o/--ofile."
  type: File
  inputBinding:
    prefix: --o-prefix
- id: in_ofile_ofile_
  doc: "OFILE OFILE, --ofile OFILE OFILE OFILE\nOutput filenames. Must give three\
    \ arguments in order:\n1. file for unique regions in condition 1; 2. file for\n\
    unique regions in condition 2; 3. file for common\nregions in both conditions.\
    \ Note: mutually exclusive\nwith --o-prefix.\n"
  type: File
  inputBinding:
    prefix: -o
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
  doc: "Output file prefix. Actual files will be named as\nPREFIX_cond1.bed, PREFIX_cond2.bed\
    \ and\nPREFIX_common.bed. Mutually exclusive with -o/--ofile."
  type: File
  outputBinding:
    glob: $(inputs.in_o_prefix)
- id: out_ofile_ofile_
  doc: "OFILE OFILE, --ofile OFILE OFILE OFILE\nOutput filenames. Must give three\
    \ arguments in order:\n1. file for unique regions in condition 1; 2. file for\n\
    unique regions in condition 2; 3. file for common\nregions in both conditions.\
    \ Note: mutually exclusive\nwith --o-prefix.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile_ofile_)
cwlVersion: v1.1
baseCommand:
- macs2
- bdgdiff

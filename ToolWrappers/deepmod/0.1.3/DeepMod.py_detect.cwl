class: CommandLineTool
id: DeepMod.py_detect.cwl
inputs:
- id: in_ref
  doc: The reference sequence
  type: string?
  inputBinding:
    prefix: --Ref
- id: in_pred_det
  doc: 'pred first and then detect (1) or only detect (0). Default: 1'
  type: string?
  inputBinding:
    prefix: --predDet
- id: in_pred_path
  doc: "The file path of predictions for each fast5 file. The file pattern is *_*.detail.\
    \ Default: './mod_output/pred2/'"
  type: File?
  inputBinding:
    prefix: --predpath
- id: in_mod_file
  doc: "The path to load training model. Default: 'mod_output/'"
  type: File?
  inputBinding:
    prefix: --modfile
- id: in_fnum
  doc: 'The number of features. Default: 7'
  type: long?
  inputBinding:
    prefix: --fnum
- id: in_hidden
  doc: 'The number of hidden node. Default: 100'
  type: long?
  inputBinding:
    prefix: --hidden
- id: in_base_call_one_d
  doc: 'Path for basecall_1d. Default: Basecall_1D_000'
  type: long?
  inputBinding:
    prefix: --basecall_1d
- id: in_base_call_two_strand
  doc: 'Path for basecall_2strand. Default: BaseCalled_template'
  type: long?
  inputBinding:
    prefix: --basecall_2strand
- id: in_region
  doc: 'The region of interest: for example, chr:1:100000;chr2:10000'
  type: long?
  inputBinding:
    prefix: --region
- id: in_con_un_k
  doc: Whether contain unknown chromosome
  type: string?
  inputBinding:
    prefix: --ConUnk
- id: in_output_layer
  doc: "{,sigmoid}\nhow to put activation function for output layer"
  type: boolean?
  inputBinding:
    prefix: --outputlayer
- id: in_base
  doc: Interest of bases
  type: string?
  inputBinding:
    prefix: --Base
- id: in_mod_cluster
  doc: '1: CpG cluster effect; 0: not'
  type: string?
  inputBinding:
    prefix: --mod_cluster
- id: in_out_level
  doc: 'The level for output: 0 for DEBUG, 1 for INFO, 2 for WARNING, 3 for ERROR.
    Default: 2'
  type: string?
  inputBinding:
    prefix: --outLevel
- id: in_wrk_base
  doc: The base folder for FAST5 files.
  type: Directory?
  inputBinding:
    prefix: --wrkBase
- id: in_fileid
  doc: "The unique string for intermediate files and final output files. Default:\
    \ 'mod'"
  type: string?
  inputBinding:
    prefix: --FileID
- id: in_out_folder
  doc: 'The default folder for outputing the results. Default: ./mod_output'
  type: Directory?
  inputBinding:
    prefix: --outFolder
- id: in_recursive
  doc: Recurise to find fast5 files. Default:1
  type: string?
  inputBinding:
    prefix: --recursive
- id: in_threads
  doc: The number of threads used (not for train). Default:4
  type: long?
  inputBinding:
    prefix: --threads
- id: in_files_per_thread
  doc: The number of fast5 files for each thread (not for train). Default:500
  type: long?
  inputBinding:
    prefix: --files_per_thread
- id: in_window_size
  doc: 'The window size to extract features. Default: 21'
  type: long?
  inputBinding:
    prefix: --windowsize
- id: in_align_str
  doc: 'Alignment tools (bwa or minimap2 is supported). Default: minimap2'
  type: string?
  inputBinding:
    prefix: --alignStr
- id: in_signal_group
  doc: 'How to associate signals to each called bases. Default: simple'
  type: string?
  inputBinding:
    prefix: --SignalGroup
- id: in_move
  doc: 'Whether the basecalled data use move tables instead of event tables. Default:
    False'
  type: boolean?
  inputBinding:
    prefix: --move
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: 'The default folder for outputing the results. Default: ./mod_output'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- DeepMod.py
- detect

class: CommandLineTool
id: spectral_layout_from_minimap.py.cwl
inputs:
- id: in_root
  doc: directory where to store layout files.
  type: Directory?
  inputBinding:
    prefix: --root
- id: in_fast_afn
  doc: reads file path (fasta format))
  type: File?
  inputBinding:
    prefix: --fastafn
- id: in_minimap_fn
  doc: overlap file path (from minimap in PAF format).
  type: File?
  inputBinding:
    prefix: --minimapfn
- id: in_write_poa_files
  doc: "Whether to write POA input files for consensus\ngeneration or not."
  type: boolean?
  inputBinding:
    prefix: --write_poa_files
- id: in_w_len
  doc: length of consensus windows for POA.
  type: long?
  inputBinding:
    prefix: --w_len
- id: in_w_ovl_len
  doc: "overlap length between two successive consensus\nwindows."
  type: long?
  inputBinding:
    prefix: --w_ovl_len
- id: in_sim_thr
  doc: "threshold on overlap score (similarity matrix\npreprocessing.)"
  type: string?
  inputBinding:
    prefix: --sim_thr
- id: in_len_thr
  doc: "threshold on length of overlaps (similarity matrix\npreprocessing)."
  type: long?
  inputBinding:
    prefix: --len_thr
- id: in_verbosity
  doc: verbosity level (-v, -vv or none)
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_ref_pos_csv_f
  doc: "csv file with position of reads (in same order as in\nfastafn) obtained from\
    \ BWA, in order to plot reads\nposition found vs reference.\n"
  type: File?
  inputBinding:
    prefix: --ref_pos_csvf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- spectral_layout_from_minimap.py

class: CommandLineTool
id: spectral_layout_from_minimap.py.cwl
inputs:
- id: root
  doc: directory where to store layout files.
  type: string
  inputBinding:
    prefix: --root
- id: fast_afn
  doc: reads file path (fasta format))
  type: string
  inputBinding:
    prefix: --fastafn
- id: minimap_fn
  doc: overlap file path (from minimap in PAF format).
  type: long
  inputBinding:
    prefix: --minimapfn
- id: write_poa_files
  doc: Whether to write POA input files for consensus generation or not.
  type: boolean
  inputBinding:
    prefix: --write_poa_files
- id: w_len
  doc: length of consensus windows for POA.
  type: string
  inputBinding:
    prefix: --w_len
- id: w_ovl_len
  doc: overlap length between two successive consensus windows.
  type: string
  inputBinding:
    prefix: --w_ovl_len
- id: sim_thr
  doc: threshold on overlap score (similarity matrix preprocessing.)
  type: string
  inputBinding:
    prefix: --sim_thr
- id: len_thr
  doc: threshold on length of overlaps (similarity matrix preprocessing).
  type: string
  inputBinding:
    prefix: --len_thr
- id: verbosity
  doc: verbosity level (-v, -vv or none)
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: ref_pos_csv_f
  doc: csv file with position of reads (in same order as in fastafn) obtained from
    BWA, in order to plot reads position found vs reference.
  type: string
  inputBinding:
    prefix: --ref_pos_csvf
outputs: []
cwlVersion: v1.1
baseCommand:
- spectral_layout_from_minimap.py

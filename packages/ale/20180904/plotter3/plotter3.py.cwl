class: CommandLineTool
id: plotter3.py.cwl
inputs:
- id: in_no_save
  doc: ': do not save the figure as a pdf (instead plot to screen)'
  type: boolean
  inputBinding:
    prefix: -nosave
- id: in_starting_position_plot
  doc: ': the starting position to plot (0)'
  type: long
  inputBinding:
    prefix: -s
- id: in_ending_position_plot
  doc: ': the ending position of the plot (contig length)'
  type: long
  inputBinding:
    prefix: -e
- id: in_spo
  doc: ': sub plots on, recursive search for errors (off)'
  type: boolean
  inputBinding:
    prefix: -spo
- id: in_pt
  doc: ": plot type 'i'nsert 'k'mer 'p'lacement 'd'epth (-pt dpkt)"
  type: string
  inputBinding:
    prefix: -pt
- id: in_dsw
  doc: ': depth smoothing window, averaging over position (-dsw 10000)'
  type: long
  inputBinding:
    prefix: -dsw
- id: in_psw
  doc: ': placement smoothing window (-psw 1000)'
  type: long
  inputBinding:
    prefix: -psw
- id: in_ksw
  doc: ': kmer smoothing window (-ksw 1000)'
  type: long
  inputBinding:
    prefix: -ksw
- id: in_is_w
  doc: ': insert smoothing window (-ksw 1000)'
  type: long
  inputBinding:
    prefix: -isw
- id: in_tp
  doc: ': threshold percentage, see paper (-tp 0.01)'
  type: double
  inputBinding:
    prefix: -tp
- id: in_tw
  doc: ': threshold width, see paper (-tw 1000)'
  type: long
  inputBinding:
    prefix: -tw
- id: in_td
  doc: ': threshold depth, see paper (-td -5.0)'
  type: double
  inputBinding:
    prefix: -td
- id: in_std
  doc: ': subplot threshold depth (-std -30.0)'
  type: double
  inputBinding:
    prefix: -std
- id: in_sl
  doc: ': subplot length (-sl 5000)'
  type: long
  inputBinding:
    prefix: -sl
- id: in_plt
  doc: ': plot threshold, only plot if more than % of errors (-plt 0.0)'
  type: double
  inputBinding:
    prefix: -plt
- id: in_fn
  doc: ': figure name (default: contig name)'
  type: string
  inputBinding:
    prefix: -fn
- id: in_mps
  doc: ': minimum plot size in bp (-mps 100)'
  type: long
  inputBinding:
    prefix: -mps
- id: in_sc
  doc: ': plot only a specific contig (ie -sc contigName213)'
  type: long
  inputBinding:
    prefix: -sc
- id: in_pmo
  doc: ': plot meta information only (off)'
  type: boolean
  inputBinding:
    prefix: -pmo
- id: in_dpm
  doc: ": don't plot meta information at all (off)"
  type: boolean
  inputBinding:
    prefix: -dpm
- id: in_mgm
  doc: ': maximum gaussian mixtures (5)'
  type: long
  inputBinding:
    prefix: -mgm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plotter3.py

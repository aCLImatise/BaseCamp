class: CommandLineTool
id: macs2_bdgopt.cwl
inputs:
- id: in_i_file
  doc: "MACS score in bedGraph. Note: this must be a bedGraph\nfile covering the ENTIRE\
    \ genome. REQUIRED"
  type: File?
  inputBinding:
    prefix: --ifile
- id: in_method
  doc: "Method to modify the score column of bedGraph file.\nAvailable choices are:\
    \ multiply, add, max, min, or\np2q. 1) multiply, the EXTRAPARAM is required and\
    \ will\nbe multiplied to the score column. If you intend to\ndivide the score\
    \ column by X, use value of 1/X as\nEXTRAPARAM. 2) add, the EXTRAPARAM is required\
    \ and\nwill be added to the score column. If you intend to\nsubtract the score\
    \ column by X, use value of -X as\nEXTRAPARAM. 3) max, the EXTRAPARAM is required\
    \ and\nwill take the maximum value between score and the\nEXTRAPARAM. 4) min,\
    \ the EXTRAPARAM is required and\nwill take the minimum value between score and\
    \ the\nEXTRAPARAM. 5) p2q, this will convert p-value scores\nto q-value scores\
    \ using Benjamini-Hochberg process.\nThe EXTRAPARAM is not required. This method\
    \ assumes\nthe scores are -log10 p-value from MACS2. Any other\ntypes of score\
    \ will cause unexpected errors."
  type: string?
  inputBinding:
    prefix: --method
- id: in_extra_parameter_method
  doc: "[EXTRAPARAM [EXTRAPARAM ...]], --extra-param [EXTRAPARAM [EXTRAPARAM ...]]\n\
    The extra parameter for METHOD. Check the detail of -m\noption."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_output_bedgraph_filename
  doc: "Output BEDGraph filename.\n"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_output_bedgraph_filename
  doc: "Output BEDGraph filename.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bedgraph_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- macs2
- bdgopt

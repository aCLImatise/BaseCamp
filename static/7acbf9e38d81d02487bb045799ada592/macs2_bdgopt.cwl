class: CommandLineTool
id: macs2_bdgopt.cwl
inputs:
- id: i_file
  doc: 'MACS score in bedGraph. Note: this must be a bedGraph file covering the ENTIRE
    genome. REQUIRED'
  type: string
  inputBinding:
    prefix: --ifile
- id: method
  doc: 'Method to modify the score column of bedGraph file. Available choices are:
    multiply, add, max, min, or p2q. 1) multiply, the EXTRAPARAM is required and will
    be multiplied to the score column. If you intend to divide the score column by
    X, use value of 1/X as EXTRAPARAM. 2) add, the EXTRAPARAM is required and will
    be added to the score column. If you intend to subtract the score column by X,
    use value of -X as EXTRAPARAM. 3) max, the EXTRAPARAM is required and will take
    the maximum value between score and the EXTRAPARAM. 4) min, the EXTRAPARAM is
    required and will take the minimum value between score and the EXTRAPARAM. 5)
    p2q, this will convert p-value scores to q-value scores using Benjamini-Hochberg
    process. The EXTRAPARAM is not required. This method assumes the scores are -log10
    p-value from MACS2. Any other types of score will cause unexpected errors.'
  type: string
  inputBinding:
    prefix: --method
- id: p
  doc: '[EXTRAPARAM [EXTRAPARAM ...]], --extra-param [EXTRAPARAM [EXTRAPARAM ...]]
    The extra parameter for METHOD. Check the detail of -m option.'
  type: boolean
  inputBinding:
    prefix: -p
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: ofile
  doc: Output BEDGraph filename.
  type: string
  inputBinding:
    prefix: --ofile
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- bdgopt

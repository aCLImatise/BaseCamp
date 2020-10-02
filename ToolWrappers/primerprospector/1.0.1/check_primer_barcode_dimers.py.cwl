class: CommandLineTool
id: check_primer_barcode_dimers.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_annealing_temp
  doc: "Specify an annealing temperature in degrees Celsius.\n[default: 50]"
  type: long
  inputBinding:
    prefix: --annealing_temp
- id: in_score_threshold
  doc: "Specify a score threshold for the Gibbs energy\ncalculation, below which a\
    \ barcode/primer combination\nis flagged for potential secondary structure.\n\
    [default: -10.0]"
  type: double
  inputBinding:
    prefix: --score_threshold
- id: in_output_dir
  doc: "Specify output directory for barcode/primer secondary\nstructure summary and\
    \ graphs. [default: .]"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_paired_end_barcodes
  doc: "If enabled, barcodes will be appended to both primer 1\nand primer 2.  [default:\
    \ False]"
  type: boolean
  inputBinding:
    prefix: --paired_end_barcodes
- id: in_suppress_graphs
  doc: "Suppress retention of output postscript graphs.\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --suppress_graphs
- id: in_barcodes
  doc: "Filepath of barcodes to score input primer(s) against.\n[REQUIRED]"
  type: File
  inputBinding:
    prefix: --barcodes
- id: in_primer_one
  doc: "Primer, written in 5' to 3', that is linked to\nbarcodes tested.  If linker\
    \ sequence is present\nbetween primer and barcode, include it with this\nsequences.\
    \ [REQUIRED]"
  type: long
  inputBinding:
    prefix: --primer1
- id: in_primer_two
  doc: "Second primer, written in 5' to 3' orientation.  This\nprimer by default is\
    \ not associated with any barcodes.\n[REQUIRED]"
  type: long
  inputBinding:
    prefix: --primer2
- id: in_energy_parameters
  doc: "Specify energy parameters file for predicting\nsecondary structures.  A DNA\
    \ parameters file,\ndna_DM.par, is found in the DNA_parameters folder of\nPrimer\
    \ Prospector, and should be pointed to with this\nparameter.  If an incorrect\
    \ file is used, the Vienna\nsoftware will use default parameters, which are for\n\
    RNA folding, and could give misleading results.  The\nprovided DNA parameters\
    \ file is a modified form of the\nDNA parameters from  David Mathews' RNAstructure\n\
    program. [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --energy_parameters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify output directory for barcode/primer secondary\nstructure summary and\
    \ graphs. [default: .]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- check_primer_barcode_dimers.py

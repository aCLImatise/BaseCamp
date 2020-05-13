class: CommandLineTool
id: check_primer_barcode_dimers.py.cwl
inputs:
- id: barcodes
  doc: Filepath of barcodes to score input primer(s) against. [REQUIRED]
  type: string
  inputBinding:
    prefix: --barcodes
- id: primer_1
  doc: Primer, written in 5' to 3', that is linked to barcodes tested.  If linker
    sequence is present between primer and barcode, include it with this sequences.
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --primer1
- id: primer_2
  doc: Second primer, written in 5' to 3' orientation.  This primer by default is
    not associated with any barcodes. [REQUIRED]
  type: string
  inputBinding:
    prefix: --primer2
- id: energy_parameters
  doc: Specify energy parameters file for predicting secondary structures.  A DNA
    parameters file, dna_DM.par, is found in the DNA_parameters folder of Primer Prospector,
    and should be pointed to with this parameter.  If an incorrect file is used, the
    Vienna software will use default parameters, which are for RNA folding, and could
    give misleading results.  The provided DNA parameters file is a modified form
    of the DNA parameters from  David Mathews' RNAstructure program. [REQUIRED]
  type: string
  inputBinding:
    prefix: --energy_parameters
outputs: []
cwlVersion: v1.1
baseCommand:
- check_primer_barcode_dimers.py

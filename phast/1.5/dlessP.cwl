class: CommandLineTool
id: dlessP.cwl
inputs:
- id: refseq
  doc: (for use with --msa-format MAF) Read the complete text of the reference sequence
    from <fname> (FASTA format) and combine it with the contents of the MAF file to
    produce a complete, ordered representation of the alignment.  The reference sequence
    of the MAF file is assumed to be the one that appears first in each block.
  type: string
  inputBinding:
    prefix: --refseq
- id: ref_idx
  doc: Use coordinate frame of specified sequence in output.  Default value is 1,
    first sequence in alignment; 0 indicates coordinate frame of entire multiple alignment.
  type: string
  inputBinding:
    prefix: --refidx
- id: timing
  doc: Write timing data to <file>.
  type: File
  inputBinding:
    prefix: --timing
- id: html
  doc: Create a directory and write one HTML file into it per DLESS prediction, giving
    the stats for that prediction.
  type: string
  inputBinding:
    prefix: --html
outputs: []
cwlVersion: v1.1
baseCommand:
- dlessP

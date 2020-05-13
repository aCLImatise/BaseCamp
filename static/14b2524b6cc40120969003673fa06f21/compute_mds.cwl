class: CommandLineTool
id: compute_mds.cwl
inputs:
- id: start
  doc: 'Starting position of the region of interest, 0-based indexing (default: 2252)'
  type: long
  inputBinding:
    prefix: --start
- id: end
  doc: 'Ending position of the region of interest, 0-based indexing. Note a half-open
    interval is used, i.e, [start:end) (default: 2549)'
  type: long
  inputBinding:
    prefix: --end
- id: r
  doc: 'FASTA file containing msa for true haplotypes (default: None)'
  type: string
  inputBinding:
    prefix: -r
- id: th_rd
  doc: 'Threshold on the haplotype frequency (default: 0.02)'
  type: double
  inputBinding:
    prefix: --thrd
- id: sim
  doc: 'Threshold on the similarity between true haplotypes and reconstructed haplotypes
    (default: 0.9)'
  type: double
  inputBinding:
    prefix: --sim
- id: plot_out_name
  doc: 'File name for the output plot (default: mds_plot.pdf)'
  type: File
  inputBinding:
    prefix: --plot_outname
- id: out_name
  doc: 'File name for the output file containing mapping from reconstructed haplotypes
    to true haplotypes (default: mapping.tsv)'
  type: File
  inputBinding:
    prefix: --outname
- id: q
  doc: 'File name prefix for reconstructed haplotypes (default: None)'
  type: File
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- compute_mds

class: CommandLineTool
id: compute_mds.cwl
inputs:
- id: in_start
  doc: "Starting position of the region of interest, 0-based\nindexing (default: 2252)"
  type: long
  inputBinding:
    prefix: --start
- id: in_end
  doc: "Ending position of the region of interest, 0-based\nindexing. Note a half-open\
    \ interval is used, i.e,\n[start:end) (default: 2549)"
  type: long
  inputBinding:
    prefix: --end
- id: in_fasta_file_containing
  doc: "FASTA file containing msa for true haplotypes\n(default: None)"
  type: File
  inputBinding:
    prefix: -r
- id: in_th_rd
  doc: 'Threshold on the haplotype frequency (default: 0.02)'
  type: double
  inputBinding:
    prefix: --thrd
- id: in_sim
  doc: "Threshold on the similarity between true haplotypes\nand reconstructed haplotypes\
    \ (default: 0.9)"
  type: double
  inputBinding:
    prefix: --sim
- id: in_plot_out_name
  doc: 'File name for the output plot (default: mds_plot.pdf)'
  type: File
  inputBinding:
    prefix: --plot_outname
- id: in_out_name
  doc: "File name for the output file containing mapping from\nreconstructed haplotypes\
    \ to true haplotypes (default:\nmapping.tsv)"
  type: File
  inputBinding:
    prefix: --outname
- id: in_file_name_prefix
  doc: "File name prefix for reconstructed haplotypes\n(default: None)\n"
  type: File
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_plot_out_name
  doc: 'File name for the output plot (default: mds_plot.pdf)'
  type: File
  outputBinding:
    glob: $(inputs.in_plot_out_name)
- id: out_out_name
  doc: "File name for the output file containing mapping from\nreconstructed haplotypes\
    \ to true haplotypes (default:\nmapping.tsv)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_name)
cwlVersion: v1.1
baseCommand:
- compute_mds

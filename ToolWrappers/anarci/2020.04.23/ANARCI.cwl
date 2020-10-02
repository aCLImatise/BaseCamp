class: CommandLineTool
id: ANARCI.cwl
inputs:
- id: in_sequence
  doc: A sequence or an input fasta file
  type: File
  inputBinding:
    prefix: --sequence
- id: in_outfile
  doc: The output file to use. Default is stdout
  type: File
  inputBinding:
    prefix: --outfile
- id: in_scheme
  doc: "Which numbering scheme should be used. i, k, c, m, w\nand a are shorthand\
    \ for IMGT, Kabat, Chothia, Martin\n(Extended Chothia), Wolfguy and Aho respectively.\n\
    Default IMGT"
  type: string
  inputBinding:
    prefix: --scheme
- id: in_restrict
  doc: "[{ig,tr,heavy,light,H,K,L,A,B} ...], -r {ig,tr,heavy,light,H,K,L,A,B} [{ig,tr,heavy,light,H,K,L,A,B}\
    \ ...]\nRestrict ANARCI to only recognise certain types of\nreceptor chains."
  type: string
  inputBinding:
    prefix: --restrict
- id: in_csv
  doc: "Write the output in csv format. Outfile must be\nspecified. A csv file is\
    \ written for each chain type\n<outfile>_<chain_type>.csv. Kappa and lambda are\n\
    considered together."
  type: File
  inputBinding:
    prefix: --csv
- id: in_outfile_hits
  doc: "Output file for domain hit tables for each sequence.\nOtherwise not output."
  type: File
  inputBinding:
    prefix: --outfile_hits
- id: in_hmmer_path
  doc: "The path to the directory containing hmmer programs.\n(including hmmscan)"
  type: File
  inputBinding:
    prefix: --hmmerpath
- id: in_n_cpu
  doc: Number of parallel processes to use. Default is 1.
  type: long
  inputBinding:
    prefix: --ncpu
- id: in_assign_germline
  doc: "Assign the v and j germlines to the sequence. The most\nsequence identical\
    \ germline is assigned."
  type: boolean
  inputBinding:
    prefix: --assign_germline
- id: in_use_species
  doc: Use a specific species in the germline assignment.
  type: string
  inputBinding:
    prefix: --use_species
- id: in_bit_score_threshold
  doc: "Change the bit score threshold used to confirm an\nalignment should be used."
  type: string
  inputBinding:
    prefix: --bit_score_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: The output file to use. Default is stdout
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_csv
  doc: "Write the output in csv format. Outfile must be\nspecified. A csv file is\
    \ written for each chain type\n<outfile>_<chain_type>.csv. Kappa and lambda are\n\
    considered together."
  type: File
  outputBinding:
    glob: $(inputs.in_csv)
- id: out_outfile_hits
  doc: "Output file for domain hit tables for each sequence.\nOtherwise not output."
  type: File
  outputBinding:
    glob: $(inputs.in_outfile_hits)
cwlVersion: v1.1
baseCommand:
- ANARCI

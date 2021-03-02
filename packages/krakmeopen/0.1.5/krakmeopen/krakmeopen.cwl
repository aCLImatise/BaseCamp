class: CommandLineTool
id: krakmeopen.cwl
inputs:
- id: in_input
  doc: Kraken2 read-by-read classifications file.
  type: File?
  inputBinding:
    prefix: --input
- id: in_input_pickle
  doc: A pickle file containing kmer tallies, produced with
  type: File?
  inputBinding:
    prefix: --input_pickle
- id: in_output
  doc: The file to write the quality metrics output to.
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_pickle
  doc: "The pickle file to write kmer tallies to. Use this\nargument to supress calculation\
    \ of quality metrics and\nonly output kmer counts to a pickled file. Input the\n\
    pickled file using --input_pickle."
  type: File?
  inputBinding:
    prefix: --output_pickle
- id: in_km_er_tally_table
  doc: "File to output the complete kmer tally table for each\ntax ID to. Optional."
  type: File?
  inputBinding:
    prefix: --kmer_tally_table
- id: in_names
  doc: NCBI style taxonomy names dump file (names.dmp).
  type: File?
  inputBinding:
    prefix: --names
- id: in_tax_id_file
  doc: "Supply multiple taxonomic IDs at once. A textfile with\none taxonomic ID per\
    \ line. Calculate quality metrics\nfor the clades rooted at the taxonomic IDs\
    \ in the\nfile."
  type: File?
  inputBinding:
    prefix: --tax_id_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The file to write the quality metrics output to.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_km_er_tally_table
  doc: "File to output the complete kmer tally table for each\ntax ID to. Optional."
  type: File?
  outputBinding:
    glob: $(inputs.in_km_er_tally_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakmeopen:0.1.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- krakmeopen

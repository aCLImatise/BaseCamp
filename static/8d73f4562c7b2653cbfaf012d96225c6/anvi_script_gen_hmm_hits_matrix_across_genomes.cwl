class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_script_gen_hmm_hits_matrix_across_genomes.cwl
inputs:
- id: external_genomes
  doc: A two-column TAB-delimited flat text file that lists anvi'o contigs databases.
    The first item in the header line should read 'name', and the second should read
    'contigs_db_path'. Each line in the file should describe a single entry, where
    the first column is the name of the genome (or MAG), and the second column is
    the anvi'o contigs database generated for this genome.
  type: File
  inputBinding:
    prefix: --external-genomes
- id: internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header line must contain these\
    \ columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'.\
    \ Each line should list a single entry, where 'name' can be any name to describe\
    \ the anvi'o bin identified as 'bin_id' that is stored in a collection."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: hmm_source
  doc: NAME Use a specific HMM source. You can use '--list-hmm- sources' flag to see
    a list of available resources. The default is 'None'.
  type: string
  inputBinding:
    prefix: --hmm-source
- id: list_hmm_sources
  doc: List available HMM sources in the contigs database and quit.
  type: boolean
  inputBinding:
    prefix: --list-hmm-sources
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-hmm-hits-matrix-across-genomes

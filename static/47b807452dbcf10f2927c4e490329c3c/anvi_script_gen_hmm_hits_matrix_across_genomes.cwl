class: CommandLineTool
id: anvi_script_gen_hmm_hits_matrix_across_genomes.cwl
inputs:
- id: in_external_genomes
  doc: "A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases.\
    \ The first item in the header\nline should read 'name', and the second should\
    \ read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry,\
    \ where the first column is the\nname of the genome (or MAG), and the second column\
    \ is\nthe anvi'o contigs database generated for this genome."
  type: File?
  inputBinding:
    prefix: --external-genomes
- id: in_internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header\nline must contain\
    \ these columns: 'name', 'bin_id',\n'collection_id', 'profile_db_path', 'contigs_db_path'.\n\
    Each line should list a single entry, where 'name' can\nbe any name to describe\
    \ the anvi'o bin identified as\n'bin_id' that is stored in a collection."
  type: File?
  inputBinding:
    prefix: --internal-genomes
- id: in_hmm_source
  doc: "NAME\nUse a specific HMM source. You can use '--list-hmm-\nsources' flag to\
    \ see a list of available resources.\nThe default is 'None'."
  type: string?
  inputBinding:
    prefix: --hmm-source
- id: in_list_hmm_sources
  doc: "List available HMM sources in the contigs database and\nquit."
  type: boolean?
  inputBinding:
    prefix: --list-hmm-sources
- id: in_output_file
  doc: "File path to store results.\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File path to store results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-hmm-hits-matrix-across-genomes

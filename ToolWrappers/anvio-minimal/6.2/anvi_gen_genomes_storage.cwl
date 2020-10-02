class: CommandLineTool
id: anvi_gen_genomes_storage.cwl
inputs:
- id: in_external_genomes
  doc: "A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases.\
    \ The first item in the header\nline should read 'name', and the second should\
    \ read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry,\
    \ where the first column is the\nname of the genome (or MAG), and the second column\
    \ is\nthe anvi'o contigs database generated for this genome."
  type: File
  inputBinding:
    prefix: --external-genomes
- id: in_internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header\nline must contain\
    \ these columns: 'name', 'bin_id',\n'collection_id', 'profile_db_path', 'contigs_db_path'.\n\
    Each line should list a single entry, where 'name' can\nbe any name to describe\
    \ the anvi'o bin identified as\n'bin_id' that is stored in a collection."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: in_gene_caller
  doc: "The gene caller to utilize. Anvi'o supports multiple\ngene callers, and some\
    \ operations (including this one)\nrequires an explicit mentioning of which one\
    \ to use.\nThe default is 'prodigal', but it will not be enough\nif you if you\
    \ were a rebel and have used `--external-\ngene-callers` or something."
  type: string
  inputBinding:
    prefix: --gene-caller
- id: in_output_file
  doc: "File path to store results.\n"
  type: File
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File path to store results.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-gen-genomes-storage

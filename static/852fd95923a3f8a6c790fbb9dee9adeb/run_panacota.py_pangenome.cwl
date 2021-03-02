class: CommandLineTool
id: run_panacota.py_pangenome.cwl
inputs:
- id: in_file_containing_list
  doc: "File containing the list of all genomes to include in the\npan-genome, 1 genome\
    \ per line: it can be the\nLSTINFO-<list_file>.lst file of 'PanACoTA annotate'\n\
    module.Here, only the first column (genome name without\nextension) will be used.\
    \ All proteins of all these\ngenomes will be concatenated in a file called\n<dataset_name>.All.prt.\
    \ The column header must be\n'gembase_name'."
  type: File?
  inputBinding:
    prefix: -l
- id: in_name_dataset_clustered
  doc: "Name of the dataset which will be clustered (for example,\nSAEN1234 for 1234\
    \ Salmonella enterica genomes). This name\nwill be used to name the protein databank,\
    \ a well as the\npangenome files."
  type: long?
  inputBinding:
    prefix: -n
- id: in_path_folder_filescorresponding
  doc: "Path to the folder containing all protein files\ncorresponding to the genomes\
    \ of the dataset (output\ndirectory 'Proteins' of 'PanACoTA annotate' module)."
  type: File?
  inputBinding:
    prefix: -d
- id: in_output_directory_savedincluding
  doc: "Output directory, where all results must be saved\n(including tmp folder)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_minimum_sequence_identity
  doc: "Minimum sequence identity to be considered in the same\ncluster (float between\
    \ 0 and 1). Default is 0.8."
  type: double?
  inputBinding:
    prefix: -i
- id: in_use_option_you_want_give
  doc: "Use this option if you want to give the name of the\npangenome output file\
    \ (without path). Otherwise, by\ndefault, it is called PanGenome-mmseq_<given_dataset_name\n\
    >.All.prt_<information_on_parameters>.lst"
  type: File?
  inputBinding:
    prefix: -f
- id: in_choose_clustering_mode
  doc: "Choose the clustering mode: 0 for 'set cover', 1 for\n'single-linkage', 2\
    \ for 'CD-Hit'. Default is 'single-\nlinkage' (1)"
  type: string?
  inputBinding:
    prefix: -c
- id: in_use_option_you_want_save
  doc: "use this option if you want to save the concatenated\nprotein databank in\
    \ another directory than the one\ncontaining all individual protein files ('Proteins'\n\
    folder)."
  type: Directory?
  inputBinding:
    prefix: -s
- id: in_threads
  doc: "add this option if you want to parallelize on several\nthreads. Indicate on\
    \ how many threads you want to\nparallelize. By default, it uses 1 thread. Put\
    \ 0 if you\nwant to use all threads of your computer."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Increase verbosity in stdout/stderr.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Do not display anything to stdout/stderr. log files will\nstill be created."
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_folder_filescorresponding
  doc: "Path to the folder containing all protein files\ncorresponding to the genomes\
    \ of the dataset (output\ndirectory 'Proteins' of 'PanACoTA annotate' module)."
  type: File?
  outputBinding:
    glob: $(inputs.in_path_folder_filescorresponding)
- id: out_output_directory_savedincluding
  doc: "Output directory, where all results must be saved\n(including tmp folder)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_savedincluding)
- id: out_use_option_you_want_give
  doc: "Use this option if you want to give the name of the\npangenome output file\
    \ (without path). Otherwise, by\ndefault, it is called PanGenome-mmseq_<given_dataset_name\n\
    >.All.prt_<information_on_parameters>.lst"
  type: File?
  outputBinding:
    glob: $(inputs.in_use_option_you_want_give)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- run_panacota.py
- pangenome

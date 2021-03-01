class: CommandLineTool
id: run_panacota.py_align.cwl
inputs:
- id: in_core_persistent_genome
  doc: Core or persistent genome whose families must be aligned.
  type: string?
  inputBinding:
    prefix: -c
- id: in_file_containing_list
  doc: "File containing the list of all the genomes you want to\nalign from their\
    \ core/persistent families. 1 genome per\nline: it can be the LSTINFO-<list_file>.lst\
    \ file of\n'PanACoTA annotate' module. Here, only the first column\n(genome name\
    \ without extension) will be used. The final\nalignment file will contain 1 alignment\
    \ per genome in\nthis file."
  type: File?
  inputBinding:
    prefix: -l
- id: in_name_dataset_aligned
  doc: "Name of the dataset which will be aligned (for example,\nSAEN1234 for 1234\
    \ Salmonella enterica genomes). This name\nwill be used to name the alignment\
    \ file."
  type: File?
  inputBinding:
    prefix: -n
- id: in_path_folder_containing
  doc: "Path to the folder containing the directories 'Proteins'\nand 'Genes', created\
    \ by 'PanACoTA annotate'."
  type: File?
  inputBinding:
    prefix: -d
- id: in_output_directory_saved
  doc: Output directory, where all results must be saved
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_threads
  doc: "add this option if you want to parallelize on several\nthreads. Indicate on\
    \ how many threads you want to\nparallelize. By default, it uses 1 thread. Put\
    \ 0 if you\nwant to use all threads of your computer."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_force
  doc: "Force run: Add this option if you want to redo all\nalignments for all families,\
    \ even if their result file\nalready exists. Without this option, if an alignment\
    \ file\nalready exists, it will be used for the next step. If you\nwant to redo\
    \ only a given alignment, just delete its\nfile, without using this option."
  type: boolean?
  inputBinding:
    prefix: --force
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
- id: out_output_directory_saved
  doc: Output directory, where all results must be saved
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_saved)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- run_panacota.py
- align

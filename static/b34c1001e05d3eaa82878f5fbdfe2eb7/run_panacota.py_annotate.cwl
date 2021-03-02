class: CommandLineTool
id: run_panacota.py_annotate.cwl
inputs:
- id: in_path_folder_containing
  doc: Path to folder containing all multifasta genome files
  type: File?
  inputBinding:
    prefix: -d
- id: in_path_folder_annotated
  doc: Path to folder where output annotated genomes must be
  type: File?
  inputBinding:
    prefix: -r
- id: in_file_containing_list
  doc: "File containing the list of genome filenames to\nannotate (1 genome per line).\
    \ Each genome must be in\nmulti-fasta format. You can specify the species name\n\
    (4 characters) you want to give to some genome, as\nwell as the download (or any\
    \ other reason) date of\nyour choice. Format 'genome_name :: name.date'. name\n\
    and date are optional. See doc for more information on\nthis file format. If you\
    \ want to run this module from\n'prepare_module' results, use '--info' instead."
  type: File?
  inputBinding:
    prefix: -l
- id: in_choose_name_genomes
  doc: "Choose a name for your annotated genomes. This name\nshould contain 4 alphanumeric\
    \ characters. Generally,\nthey correspond to the 2 first letters of genus, and\
    \ 2\nfirst letters of species, e.g. ESCO for Escherichia\nColi."
  type: long?
  inputBinding:
    prefix: -n
- id: in_add_option_you_want_only
  doc: "Add this option if you want only to do quality control\non your genomes (cut\
    \ at 5N if asked, calculate L90 and\nnumber of contigs and plot their distributions).\
    \ This\nallows you to check which genomes would be annotated\nwith the given parameters,\
    \ and to modify those\nparameters if you want, before you launch the\nannotation\
    \ and formatting steps."
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_info
  doc: "If you already ran the 'prepare' data module, or\nalready calculated yourself\
    \ the L90 and number of\ncontigs for each genome, you can give this\ninformation,\
    \ to go directly to annotation and\nformatting steps. This file contains at least\
    \ 4\ncolumns, tab separated, with the following headers:\n'to_annotate', 'gsize',\
    \ 'nb_conts', 'L90'. Any other\ncolumn will be ignored."
  type: long?
  inputBinding:
    prefix: --info
- id: in_prodigal
  doc: "Add this option if you only want syntactical\nannotation, given by prodigal,\
    \ and not functional\nannotation requiring prokka and is slower."
  type: boolean?
  inputBinding:
    prefix: --prodigal
- id: in_small
  doc: "If you use Prodigal to annotate genomes, if you\nsequences are too small (less\
    \ than 20000 characters),\nit cannot annotate them with the default options. Add\n\
    this option to use 'meta' procedure."
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_l_nine_zero
  doc: "Maximum value of L90 allowed to keep a genome. Default\nis 100."
  type: long?
  inputBinding:
    prefix: --l90
- id: in_nb_cont
  doc: "Maximum number of contigs allowed to keep a genome.\nDefault is 999."
  type: long?
  inputBinding:
    prefix: --nbcont
- id: in_cut_n
  doc: "By default, each genome will be cut into new contigs\nwhen at least 5 'N'\
    \ in a row are found in its\nsequence. If you don't want to cut genomes into new\n\
    contigs when there are rows of 'N', put 0 to this\noption. If you want to cut\
    \ from a different number of\n'N' occurrences, put this value to this option."
  type: long?
  inputBinding:
    prefix: --cutn
- id: in_date
  doc: "Specify the date (MMYY) to give to your annotated\ngenomes. By default, will\
    \ give today's date. The only\nrequirement on the given date is that it is 4\n\
    characters long. You can use letters if you want. But\nthe common way is to use\
    \ 4 digits, corresponding to\nMMYY."
  type: long?
  inputBinding:
    prefix: --date
- id: in_tmp
  doc: "Specify where the temporary files (sequence split by\nrows of 'N', sequence\
    \ with new contig names etc.) must\nbe saved. By default, it will be saved in\
    \ your\nresult_directory/tmp_files."
  type: string?
  inputBinding:
    prefix: --tmp
- id: in_an_not_dir
  doc: "Specify in which directory the prokka/prodigal output\nfiles (1 folder per\
    \ genome, called\n<genome_name>-[prokka, Prodigal]Res) must be saved. By\ndefault,\
    \ they are saved in the same directory as your\ntemporary files (see --tmp option\
    \ to change it)."
  type: Directory?
  inputBinding:
    prefix: --annot_dir
- id: in_force
  doc: "Force run: Add this option if you want to (re)run\nannotation and formatting\
    \ steps for all genomes even\nif their result folder (for annotation step) or\
    \ files\n(for format step) already exist: override existing\nresults. Without\
    \ this option, if there already are\nresults in the given result folder, the program\
    \ stops.\nIf there are no results, but prokka/prodigal folder\nalready exists,\
    \ prokka/prodigal won't run again, and\nthe formating step will use the already\
    \ existing\nfolder if correct, or skip the genome if there are\nproblems in prokka/prodigal\
    \ folder."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_threads
  doc: Specify how many threads can be used (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Increase verbosity in stdout/stderr.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Do not display anything to stdout/stderr. log files\nwill still be created."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_saved
  doc: 'Optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_folder_annotated
  doc: Path to folder where output annotated genomes must be
  type: File?
  outputBinding:
    glob: $(inputs.in_path_folder_annotated)
- id: out_an_not_dir
  doc: "Specify in which directory the prokka/prodigal output\nfiles (1 folder per\
    \ genome, called\n<genome_name>-[prokka, Prodigal]Res) must be saved. By\ndefault,\
    \ they are saved in the same directory as your\ntemporary files (see --tmp option\
    \ to change it)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_an_not_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- run_panacota.py
- annotate

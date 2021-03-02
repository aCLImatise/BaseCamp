class: CommandLineTool
id: PanACoTA_all.cwl
inputs:
- id: in_path_your_configuration
  doc: Path to your configuration file, defining values of
  type: File?
  inputBinding:
    prefix: -c
- id: in_threads
  doc: Specify how many threads can be used (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_species_taxid_download
  doc: "Species taxid to download, corresponding to the\n'species taxid' provided\
    \ by the NCBI. A comma-\nseparated list of taxid can also be provided."
  type: string?
  inputBinding:
    prefix: -t
- id: in_species_download_corresponding
  doc: "Species to download, corresponding to the 'organism\nname' provided by the\
    \ NCBI. Give name between quotes\n(for example \"escherichia coli\")"
  type: string?
  inputBinding:
    prefix: -s
- id: in_assembly_level
  doc: "Assembly levels of genomes to download (default: all).\nPossible levels are:\
    \ 'all', 'complete', 'chromosome',\n'scaffold', 'contig'.You can also provide\
    \ a comma-\nseparated list of assembly levels. For ex:\n'complete,chromosome'"
  type: string?
  inputBinding:
    prefix: --assembly_level
- id: in_cut_n
  doc: "By default, each genome will be cut into new contigs\nwhen at least 5 'N'\
    \ in a row are found in its\nsequence. If you don't want to cut genomes into new\n\
    contigs when there are rows of 'N', put 0 to this\noption. If you want to cut\
    \ from a different number of\n'N' in a row, put this value to this option."
  type: long?
  inputBinding:
    prefix: --cutn
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
- id: in_prodigal
  doc: "Add this option if you only want syntactical\nannotation, given by prodigal,\
    \ and not functional\nannotation requiring prokka and is slower."
  type: boolean?
  inputBinding:
    prefix: --prodigal
- id: in_choose_name_genomes
  doc: "Choose a name for your annotated genomes. This name\nshould contain 4 alphanumeric\
    \ characters. Generally,\nthey correspond to the 2 first letters of genus, and\
    \ 2\nfirst letters of species, e.g. ESCO for Escherichia\nColi."
  type: long?
  inputBinding:
    prefix: -n
- id: in_minimum_sequence_identity
  doc: "Minimum sequence identity to be considered in the same\ncluster (float between\
    \ 0 and 1). Default is 0.8."
  type: double?
  inputBinding:
    prefix: -i
- id: in_to_l
  doc: "min % of genomes having at least 1 member in a family\nto consider the family\
    \ as persistent (between 0 and 1,\ndefault is 1 = 100% of genomes = Core genome).By\n\
    default, the minimum number of genomes will be\nceil('tol'*N) (N being the total\
    \ number of genomes).\nIf you want to use floor('tol'*N) instead, add the\n'-F'\
    \ option."
  type: long?
  inputBinding:
    prefix: --tol
- id: in_mu
  doc: "Add this option if you allow several members in any\ngenome of a family. By\
    \ default, only 1 (or 0 if tol<1)\nmember per genome are allowed in all genomes.\
    \ If you\nwant to allow exactly 1 member in 'tol'% of the\ngenomes, and 0, 1 or\
    \ several members in the '1-tol'%\nleft, use the option -X instead of this one:\
    \ -M and -X\noptions are not compatible."
  type: boolean?
  inputBinding:
    prefix: -Mu
- id: in_add_option_you_want_allow
  doc: "Add this option if you want to allow families having\nseveral members only\
    \ in '1-tol'% of the genomes. In\nthe other genomes, only 1 member exactly is\
    \ allowed.\nThis option is not compatible with -M (which is\nallowing multigenic\
    \ families: having several members\nin any number of genomes)."
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_soft
  doc: "Choose with which software you want to infer the\nphylogenetic tree. Default\
    \ is IQtree."
  type: string?
  inputBinding:
    prefix: --soft
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
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_parameters_dot
  doc: -o OUTDIR             Path to your output folder, where all results from all
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- PanACoTA
- all

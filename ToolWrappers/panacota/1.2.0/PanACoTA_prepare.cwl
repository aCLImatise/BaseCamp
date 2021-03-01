class: CommandLineTool
id: PanACoTA_prepare.cwl
inputs:
- id: in_species_taxid_download
  doc: "Species taxid to download, corresponding to the\n'species taxid' provided\
    \ by the NCBI. This will\ndownload all sequences of this species and all its\n\
    sub-species.A comma-separated list of species taxids\ncan also be provided. (Ex:\
    \ -T 573 for Klebsiella\npneumoniae)"
  type: long?
  inputBinding:
    prefix: -T
- id: in_taxid_download_be
  doc: "Taxid to download. This can be the taxid of a sub-\nspecies, or of a specific\
    \ strain. A taxid of a\nsubspecies will download all strains in this\nsubspecies\
    \ EXCEPT the ones which have a specific\ntaxid.A comma-separated list of taxids\
    \ can also be\nprovided.Ex: '-t 72407' will download all 'general' K.\npneumoniae\
    \ subsp. pneumoniae strains, and '-t 1123862'\nwill download the strain K. pneumoniae\
    \ subsp.\npneumoniae Kp13 (not included in -t 72407, as it is a\nstrain of the\
    \ subspecies with a specific taxid)."
  type: long?
  inputBinding:
    prefix: -t
- id: in_species_download_corresponding
  doc: "Species to download, corresponding to the 'organism\nname' provided by the\
    \ NCBI. Give name between quotes\n(for example \"escherichia coli\")"
  type: string?
  inputBinding:
    prefix: -g
- id: in_ncbi_section_download
  doc: "NCBI section to download: all genbank, or only refseq\n(default)"
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
- id: in_give_path_directory
  doc: "Give the path to the directory where you want to save\nthe downloaded database.\
    \ In the given directory, it\nwill create a folder 'Database_init' containing\
    \ all\nfasta files that will be sent to the control\nprocedure, as well as a folder\
    \ 'refseq' with all\noriginal compressed files downloaded from refseq. By\ndefault,\
    \ this output dir name is the ncbi_species name\nif given, or ncbi_species_taxid\
    \ or ncbi_taxid\notherwise."
  type: File?
  inputBinding:
    prefix: -o
- id: in_tmp
  doc: "Specify where the temporary files (sequence split by\nrows of 'N', sequence\
    \ with new contig names etc.) must\nbe saved. By default, it will be saved in\
    \ your\nout_dir/tmp_files."
  type: string?
  inputBinding:
    prefix: --tmp
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
- id: in_min_dist
  doc: "By default, genomes whose distance to the reference is\nnot between 1e-4 and\
    \ 0.06 are discarded. You can\nspecify your own lower limit (instead of 1e-4)\
    \ with\nthis option."
  type: double?
  inputBinding:
    prefix: --min_dist
- id: in_max_dist
  doc: "By default, genomes whose distance to the reference is\nnot between 1e-4 and\
    \ 0.06 are discarded. You can\nspecify your own lower limit (instead of 0.06)\
    \ with\nthis option."
  type: long?
  inputBinding:
    prefix: --max_dist
- id: in_threads
  doc: "Run 'N' downloads in parallel (default=1). Put 0 if\nyou want to use all cores\
    \ of your computer."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_refseq
  doc: "If you already downloaded refseq genomes and do not\nwant to check them, add\
    \ this option to directly go to\nthe next steps:quality control (L90, number of\n\
    contigs...) and mash filter. Don't forget to specify\nthe db_dir (-d option) where\
    \ you already have your\ngenome sequences."
  type: boolean?
  inputBinding:
    prefix: --norefseq
- id: in_your_already_downloaded
  doc: "If your already downloaded sequences are not in the\ndefault directory (outdir/Database_init),\
    \ you can\nspecify here the path to those fasta files."
  type: File?
  inputBinding:
    prefix: -d
- id: in_only_mash
  doc: "Add this option if you already downloaded complete and\nrefseq genomes, and\
    \ ran quality control (you have, a\nfile containing all genome names, as well\
    \ as their\ngenome size, number of contigs and L90 values). It\nwill then get\
    \ information on genomes quality from this\nfile, and run mash steps."
  type: boolean?
  inputBinding:
    prefix: --only-mash
- id: in_info
  doc: "If you already ran the quality control, specify from\nwhich file PanACoTA\
    \ can read this information, in\norder to proceed to the mash step. This file\
    \ must\ncontain at least 4 columns, tab separated, with the\nfollowing headers:\
    \ 'to_annotate', 'gsize', 'nb_conts',\n'L90'. Any other column will be ignored."
  type: File?
  inputBinding:
    prefix: --info
- id: in_verbose
  doc: Increase verbosity in stdout/stderr and log files.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Do not display anything to stdout/stderr. log files\nwill still be created."
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_give_path_directory
  doc: "Give the path to the directory where you want to save\nthe downloaded database.\
    \ In the given directory, it\nwill create a folder 'Database_init' containing\
    \ all\nfasta files that will be sent to the control\nprocedure, as well as a folder\
    \ 'refseq' with all\noriginal compressed files downloaded from refseq. By\ndefault,\
    \ this output dir name is the ncbi_species name\nif given, or ncbi_species_taxid\
    \ or ncbi_taxid\notherwise."
  type: File?
  outputBinding:
    glob: $(inputs.in_give_path_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- PanACoTA
- prepare

class: CommandLineTool
id: confindr.py.cwl
inputs:
- id: in_input_directory
  doc: "Folder that contains fastq files you want to check for\ncontamination. Will\
    \ find any file that contains .fq or\n.fastq in the filename."
  type: Directory?
  inputBinding:
    prefix: --input_directory
- id: in_output_name
  doc: Base name for output/temporary directories.
  type: string?
  inputBinding:
    prefix: --output_name
- id: in_databases
  doc: "Databases folder. To download these, you will need to\nget access to the rMLST\
    \ databases. For complete\ninstructions on how to do this, please see\nhttps://olc-bioinformatics.github.io/ConFindr/install/\n\
    #downloading-confindr-databases"
  type: Directory?
  inputBinding:
    prefix: --databases
- id: in_rm_lst
  doc: "Activate to prefer using rMLST databases over core-\ngene derived databases.\
    \ By default,ConFindr will use\ncore-gene derived databases where available."
  type: boolean?
  inputBinding:
    prefix: --rmlst
- id: in_threads
  doc: Number of threads to run analysis with.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tmp
  doc: "If your ConFindr databases are in a location you don't\nhave write access\
    \ to, you can enter this option to\nspecify a temporary directory to put genus-specific\n\
    databases to."
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_keep_files
  doc: "By default, intermediate files are deleted. Activate\nthis flag to keep intermediate\
    \ files."
  type: boolean?
  inputBinding:
    prefix: --keep_files
- id: in_quality_cut_off
  doc: "Base quality needed to support a multiple allele call.\nDefaults to 20."
  type: long?
  inputBinding:
    prefix: --quality_cutoff
- id: in_base_cut_off
  doc: "Number of bases necessary to support a multiple allele\ncall. Defaults to\
    \ 2."
  type: long?
  inputBinding:
    prefix: --base_cutoff
- id: in_base_fraction_cut_off
  doc: "Fraction of bases necessary to support a multiple\nallele call. Particularly\
    \ useful when dealing with\nvery high coverage samples. Default is 0.05."
  type: double?
  inputBinding:
    prefix: --base_fraction_cutoff
- id: in_forward_id
  doc: Identifier for forward reads.
  type: string?
  inputBinding:
    prefix: --forward_id
- id: in_reverse_id
  doc: Identifier for reverse reads.
  type: string?
  inputBinding:
    prefix: --reverse_id
- id: in_data_type
  doc: "Type of input data. Default is Illumina, but can be\nused for Nanopore too.\
    \ No PacBio support (yet)."
  type: string?
  inputBinding:
    prefix: --data_type
- id: in_x_mx
  doc: "Very occasionally, parts of the pipeline that use the\nBBMap suite will have\
    \ their memory reservation fail\nand request not enough, or sometimes negative,\
    \ memory.\nIf this happens to you, you can use this flag to\noverride automatic\
    \ memory reservation and use an\namount of memory requested by you. -Xmx 20g will\n\
    specify 20 gigs of RAM, and -Xmx 800m will specify 800\nmegs."
  type: long?
  inputBinding:
    prefix: --Xmx
- id: in_cgm_lst
  doc: "Path to a cgMLST database to use for contamination\ndetection instead of using\
    \ the default rMLST database.\nSequences in this file should have headers in format\n\
    >genename_allelenumber. To speed up ConFindr runs,\nclustering the cgMLST database\
    \ with CD-HIT before\nrunning ConFindr is recommended. This is highly\nexperimental,\
    \ results should be interpreted with great\ncare."
  type: File?
  inputBinding:
    prefix: --cgmlst
- id: in_fast_a
  doc: "If activated, will look for FASTA files instead of\nFASTQ for unpaired reads."
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_verbosity
  doc: "Amount of output you want printed to the screen.\nDefaults to info, which\
    \ should be good for most users."
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_cross_details
  doc: "Continue ConFindr analyses on samples with two or more\ngenera identified.\
    \ Default is False"
  type: boolean?
  inputBinding:
    prefix: --cross_details
- id: in_min_matching_hashes
  doc: "Minimum number of matching hashes in a MASH screen in\norder for a genus to\
    \ be considered present in a\nsample. Default is 150\n"
  type: long?
  inputBinding:
    prefix: --min_matching_hashes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/confindr:0.7.4--py_0
cwlVersion: v1.1
baseCommand:
- confindr.py

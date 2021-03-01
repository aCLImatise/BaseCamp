class: CommandLineTool
id: migmap.cwl
inputs:
- id: in_all_alleles
  doc: "Will use all alleles during\nalignment (this is going to be\nslower). [default\
    \ = use only major\n(*01) alleles]"
  type: boolean?
  inputBinding:
    prefix: --all-alleles
- id: in_allow_incomplete
  doc: "Report clonotypes with partial\nCDR3 mapping."
  type: boolean?
  inputBinding:
    prefix: --allow-incomplete
- id: in_allow_no_cdr_three
  doc: Report clonotypes with no CDR3
  type: boolean?
  inputBinding:
    prefix: --allow-no-cdr3
- id: in_allow_noncoding
  doc: "Report clonotypes that have either\nstop codon or frameshift in their\nreceptor\
    \ sequence."
  type: boolean?
  inputBinding:
    prefix: --allow-noncoding
- id: in_blast_dir
  doc: "Path to folder that contains\n'igblastn' and 'makeblastdb'\nbinaries. [default\
    \ = assume they\nare added to $PATH and execute\nthem directly]"
  type: File?
  inputBinding:
    prefix: --blast-dir
- id: in_by_read
  doc: "Will output mapping details for\neach read. [default = assemble\nclonotypes\
    \ and output clonotype\nabundance table]"
  type: boolean?
  inputBinding:
    prefix: --by-read
- id: in_custom_database
  doc: "Path to a custom segments\ndatabase. [default = use built-in\ndatabase]"
  type: File?
  inputBinding:
    prefix: --custom-database
- id: in_data_dir
  doc: "Path to folder that contains data\nbundle (internal_data/ and\noptional_file/\
    \ directories).\n[default = $install_dir/data/]"
  type: File?
  inputBinding:
    prefix: --data-dir
- id: in_details
  doc: "<field1,field2,.../all>   Additional fields to provide for\noutput, allowed\
    \ values:\nfr1nt,cdr1nt,fr2nt,cdr2nt,fr3nt,fr\n4nt,contignt,fr1aa,cdr1aa,fr2aa,cd\n\
    r2aa,fr3aa,fr4aa,contigaa."
  type: boolean?
  inputBinding:
    prefix: --details
- id: in_number_reads_take
  doc: "Number of reads to take. [default\n= all]"
  type: long?
  inputBinding:
    prefix: -n
- id: in_number_available_processors
  doc: "Number of cores to use. [default =\nall available processors]"
  type: long?
  inputBinding:
    prefix: -p
- id: in_threshold_average_quality
  doc: "Threshold for average quality of\nmutations and N-regions of CDR3\n[default\
    \ = 25]"
  type: long?
  inputBinding:
    prefix: -q
- id: in_chain_receptor_gene
  doc: "<chain1,...>                        Receptor gene and chain. Several\nchains\
    \ can be specified, separated\nwith commas. Allowed values: [TRA,\nTRB, TRG, TRD,\
    \ IGH, IGL, IGK].\n[required]"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_report
  doc: "File to store MIGMAP report. Will\nappend report line if file exists."
  type: File?
  inputBinding:
    prefix: --report
- id: in_species_allowed_humanmouse
  doc: "Species. Allowed values: [human,\nmouse, rat, rabbit,\nrhesus_monkey]. [required]"
  type: string?
  inputBinding:
    prefix: -S
- id: in_unmapped
  doc: <fastq[.gz]>             Output unmapped reads in specified
  type: boolean?
  inputBinding:
    prefix: --unmapped
- id: in_mapping_dot
  doc: --allow-noncanonical                Report clonotypes that have
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: --use-kabat                         Will use KABAT nomenclature for
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- migmap

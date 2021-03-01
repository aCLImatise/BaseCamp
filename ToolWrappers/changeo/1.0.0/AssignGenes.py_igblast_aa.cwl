class: CommandLineTool
id: AssignGenes.py_igblast_aa.cwl
inputs:
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir, or --outname\narguments. If unspecified, then the output filename\n\
    will be based on the input filename(s). (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_list_fasta_files
  doc: "A list of FASTA files containing sequences to process.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_igblast_database_directory
  doc: 'IgBLAST database directory (IGDATA). (default: None)'
  type: Directory?
  inputBinding:
    prefix: -b
- id: in_organism
  doc: 'Organism name. (default: human)'
  type: string?
  inputBinding:
    prefix: --organism
- id: in_loci
  doc: 'The receptor type. (default: ig)'
  type: string?
  inputBinding:
    prefix: --loci
- id: in_vdb
  doc: "Name of the custom V reference in the IgBLAST database\nfolder. If not specified,\
    \ then a default database name\nwith the form imgt_aa_<organism>_<loci>_v will\
    \ be\nused. (default: None)"
  type: Directory?
  inputBinding:
    prefix: --vdb
- id: in_exec
  doc: 'Path to the igblastp executable. (default: igblastp)'
  type: File?
  inputBinding:
    prefix: --exec
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- AssignGenes.py
- igblast-aa

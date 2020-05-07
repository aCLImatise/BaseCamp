class: CommandLineTool
id: AssignGenes.py_igblast.cwl
inputs:
- id: o
  doc: 'Explicit output file name. Note, this argument cannot be used with the --failed,
    --outdir, or --outname arguments. If unspecified, then the output filename will
    be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: s
  doc: 'A list of FASTA files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
- id: b
  doc: 'IgBLAST database directory (IGDATA). (default: None)'
  type: string
  inputBinding:
    prefix: -b
- id: organism
  doc: 'Organism name. (default: human)'
  type: string
  inputBinding:
    prefix: --organism
- id: loci
  doc: 'The receptor type. (default: ig)'
  type: string
  inputBinding:
    prefix: --loci
- id: vdb
  doc: 'Name of the custom V reference in the IgBLAST database folder. If not specified,
    then a default database name with the form imgt_<organism>_<loci>_v will be used.
    (default: None)'
  type: string
  inputBinding:
    prefix: --vdb
- id: ddb
  doc: 'Name of the custom D reference in the IgBLAST database folder. If not specified,
    then a default database name with the form imgt_<organism>_<loci>_d will be used.
    (default: None)'
  type: string
  inputBinding:
    prefix: --ddb
- id: jdb
  doc: 'Name of the custom J reference in the IgBLAST database folder. If not specified,
    then a default database name with the form imgt_<organism>_<loci>_j will be used.
    (default: None)'
  type: string
  inputBinding:
    prefix: --jdb
- id: format
  doc: 'Specify the output format. The "blast" will result in the IgBLAST "-outfmt
    7 std qseq sseq btop" output format. Specifying "airr" will output the AIRR TSV
    format provided by the IgBLAST argument "-outfmt 19". (default: blast)'
  type: string
  inputBinding:
    prefix: --format
- id: exec
  doc: 'Path to the igblastn executable. (default: igblastn)'
  type: string
  inputBinding:
    prefix: --exec
outputs: []
cwlVersion: v1.1
baseCommand:
- AssignGenes.py
- igblast

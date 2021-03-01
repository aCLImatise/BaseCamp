class: CommandLineTool
id: ariba_prepareref.cwl
inputs:
- id: in_fast_a
  doc: "REQUIRED. Name of fasta file. Can be used more than\nonce if your sequences\
    \ are spread over more than on\nfile"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_metadata
  doc: "Name of tsv file of metadata about the input\nsequences. Can be used more\
    \ than once if your metadata\nis spread over more than one file. Incompatible\
    \ with\n--all_coding"
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_all_coding
  doc: "Use this if you only have a fasta of presence absence\nsequences as input,\
    \ and no metadata. Use \"yes\" if all\nsequences are coding, or \"no\" if they\
    \ are all non-\ncoding. Incompatible with -m/--metadata"
  type: string?
  inputBinding:
    prefix: --all_coding
- id: in_no_cd_hit
  doc: "Do not run cd-hit. Each input sequence is put into its\nown \"cluster\". Incompatible\
    \ with --cdhit_clusters."
  type: boolean?
  inputBinding:
    prefix: --no_cdhit
- id: in_cd_hit_clusters
  doc: "File specifying how the sequences should be clustered.\nWill be used instead\
    \ of running cdhit. Format is one\ncluster per line. Sequence names separated\
    \ by\nwhitespace. Incompatible with --no_cdhit"
  type: File?
  inputBinding:
    prefix: --cdhit_clusters
- id: in_cd_hit_min_id
  doc: Sequence identity threshold (cd-hit option -c) [0.9]
  type: double?
  inputBinding:
    prefix: --cdhit_min_id
- id: in_cd_hit_min_length
  doc: Length difference cutoff (cd-hit option -s) [0.0]
  type: double?
  inputBinding:
    prefix: --cdhit_min_length
- id: in_cd_hit_max_memory
  doc: "Memory limit in MB (cd-hit option -M) [None]. Use 0\nfor unlimited."
  type: long?
  inputBinding:
    prefix: --cdhit_max_memory
- id: in_min_gene_length
  doc: "Minimum allowed length in nucleotides of reference\ngenes [6]"
  type: long?
  inputBinding:
    prefix: --min_gene_length
- id: in_max_gene_length
  doc: "Maximum allowed length in nucleotides of reference\ngenes [10000]"
  type: long?
  inputBinding:
    prefix: --max_gene_length
- id: in_min_noncoding_length
  doc: "Minimum allowed length in nucleotides of non-coding\nsequences [6]"
  type: long?
  inputBinding:
    prefix: --min_noncoding_length
- id: in_max_noncoding_length
  doc: "Maximum allowed length in nucleotides of non-coding\nsequences [20000]"
  type: long?
  inputBinding:
    prefix: --max_noncoding_length
- id: in_genetic_code
  doc: "Number of genetic code to use. Currently supported\n1,4,11 [11]"
  type: long?
  inputBinding:
    prefix: --genetic_code
- id: in_force
  doc: Overwrite output directory, if it already exists
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_threads
  doc: "Number of threads (currently only applies to cdhit)\n[1]"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_outdir
  doc: Output directory (must not already exist)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Overwrite output directory, if it already exists
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0
cwlVersion: v1.1
baseCommand:
- ariba
- prepareref

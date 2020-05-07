class: CommandLineTool
id: dfast.cwl
inputs:
- id: genome
  doc: Genomic FASTA file
  type: File
  inputBinding:
    prefix: --genome
- id: out
  doc: Output directory (default:OUT)
  type: File
  inputBinding:
    prefix: --out
- id: config
  doc: Configuration file (default config will be used if not specified)
  type: File
  inputBinding:
    prefix: --config
- id: organism
  doc: Organism name
  type: string
  inputBinding:
    prefix: --organism
- id: strain
  doc: Strain name
  type: string
  inputBinding:
    prefix: --strain
- id: complete
  doc: Treat the query as a complete genome. Not required unless you need INSDC submission
    files. [t|f(=default)]
  type: boolean
  inputBinding:
    prefix: --complete
- id: use_original_name
  doc: Use original sequence names in a query FASTA file [t|f(=default)]
  type: boolean
  inputBinding:
    prefix: --use_original_name
- id: sort_sequence
  doc: Sort sequences by length [t(=default)|f]
  type: boolean
  inputBinding:
    prefix: --sort_sequence
- id: minimum_length
  doc: Minimum sequence length (default:200)
  type: long
  inputBinding:
    prefix: --minimum_length
- id: fix_origin
  doc: Rotate/flip the chromosome so that the dnaA gene comes first. (ONLY FOR A FINISHED
    GENOME)
  type: boolean
  inputBinding:
    prefix: --fix_origin
- id: offset
  doc: Offset from the start codon of the dnaA gene. (for --fix_origin option, default=0)
  type: long
  inputBinding:
    prefix: --offset
- id: locus_tag_prefix
  doc: Locus tag prefix (defaut:LOCUS)
  type: string
  inputBinding:
    prefix: --locus_tag_prefix
- id: step
  doc: Increment step of locus tag (default:10)
  type: long
  inputBinding:
    prefix: --step
- id: use_separate_tags
  doc: Use separate tags according to feature types [t(=default)|f]
  type: boolean
  inputBinding:
    prefix: --use_separate_tags
- id: threshold
  doc: 'Thresholds for default database search (format: "pident,q_cov,s_cov,e_value",
    default: "0,75,75,1e-6")'
  type: string
  inputBinding:
    prefix: --threshold
- id: database
  doc: 'Additional reference database to be searched against prior to the default
    database. (format: db_path[,db_name[,pident,q_cov,s_cov,e_value]])'
  type: File
  inputBinding:
    prefix: --database
- id: references
  doc: Reference file(s) for OrthoSearch. Use semicolons for multiple files, e.g.
    'genome1.faa;genome2.gbk'
  type: File
  inputBinding:
    prefix: --references
- id: aligner
  doc: Aligner to use [ghostx(=default)|blastp|diamond]
  type: string
  inputBinding:
    prefix: --aligner
- id: use_prodigal
  doc: Use Prodigal to predict CDS instead of MGA
  type: boolean
  inputBinding:
    prefix: --use_prodigal
- id: use_genemark_s2
  doc: Use GeneMarkS2 to predict CDS instead of MGA. [auto|bact|arch]
  type: string
  inputBinding:
    prefix: --use_genemarks2
- id: use_trnascan
  doc: Use tRNAscan-SE to predict tRNA instead of Aragorn. [bact|arch]
  type: string
  inputBinding:
    prefix: --use_trnascan
- id: use_rn_ammer
  doc: Use RNAmmer to predict rRNA instead of Barrnap. [bact|arch]
  type: string
  inputBinding:
    prefix: --use_rnammer
- id: g_code
  doc: Genetic code [11(=default),4(=Mycoplasma)]
  type: long
  inputBinding:
    prefix: --gcode
- id: no_hmm
  doc: Disable HMMscan
  type: boolean
  inputBinding:
    prefix: --no_hmm
- id: no_cdd
  doc: Disable CDDsearch
  type: boolean
  inputBinding:
    prefix: --no_cdd
- id: no_cds
  doc: Disable CDS prediction
  type: boolean
  inputBinding:
    prefix: --no_cds
- id: no_rrna
  doc: Disable rRNA prediction
  type: boolean
  inputBinding:
    prefix: --no_rrna
- id: no_trna
  doc: Disable tRNA prediction
  type: boolean
  inputBinding:
    prefix: --no_trna
- id: no_crisp_r
  doc: Disable CRISPR prediction
  type: boolean
  inputBinding:
    prefix: --no_crispr
- id: gff
  doc: '[Preliminary implementation] Read GFF to import structural annotation. Ignores
    --use_original_name, --sort_sequence, --fix_origin.'
  type: string
  inputBinding:
    prefix: --gff
- id: seq_names
  doc: Sequence names for each sequence (for complete genome)
  type: string
  inputBinding:
    prefix: --seq_names
- id: seq_types
  doc: Sequence types for each sequence (chromosome/plasmid, for complete genome)
  type: string
  inputBinding:
    prefix: --seq_types
- id: seq_topologies
  doc: Sequence topologies for each sequence (linear/circular, for complete genome)
  type: string
  inputBinding:
    prefix: --seq_topologies
- id: additional_modifiers
  doc: Additional modifiers for source features
  type: string
  inputBinding:
    prefix: --additional_modifiers
- id: metadata_file
  doc: Path to a metadata file (optional for DDBJ submission file)
  type: File
  inputBinding:
    prefix: --metadata_file
- id: center_name
  doc: Genome center name (optional for GenBank submission file)
  type: string
  inputBinding:
    prefix: --center_name
- id: cpu
  doc: Number of CPUs to use
  type: long
  inputBinding:
    prefix: --cpu
- id: force
  doc: Force overwriting output
  type: boolean
  inputBinding:
    prefix: --force
- id: debug
  doc: Run in debug mode (Extra logging and retaining temporary files)
  type: boolean
  inputBinding:
    prefix: --debug
- id: show_config
  doc: Show pipeline configuration and exit
  type: boolean
  inputBinding:
    prefix: --show_config
outputs: []
cwlVersion: v1.1
baseCommand:
- dfast

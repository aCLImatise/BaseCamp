class: CommandLineTool
id: dfast.cwl
inputs:
- id: in_genome
  doc: Genomic FASTA file
  type: File?
  inputBinding:
    prefix: --genome
- id: in_out
  doc: Output directory (default:OUT)
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_config
  doc: "Configuration file (default config will be used if not\nspecified)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_organism
  doc: Organism name
  type: string?
  inputBinding:
    prefix: --organism
- id: in_strain
  doc: Strain name
  type: string?
  inputBinding:
    prefix: --strain
- id: in_complete
  doc: "Treat the query as a complete genome. Not required\nunless you need INSDC\
    \ submission files.\n[t|f(=default)]"
  type: boolean?
  inputBinding:
    prefix: --complete
- id: in_use_original_name
  doc: "Use original sequence names in a query FASTA file\n[t|f(=default)]"
  type: boolean?
  inputBinding:
    prefix: --use_original_name
- id: in_sort_sequence
  doc: Sort sequences by length [t(=default)|f]
  type: boolean?
  inputBinding:
    prefix: --sort_sequence
- id: in_minimum_length
  doc: Minimum sequence length (default:200)
  type: long?
  inputBinding:
    prefix: --minimum_length
- id: in_fix_origin
  doc: "Rotate/flip the chromosome so that the dnaA gene comes\nfirst. (ONLY FOR A\
    \ FINISHED GENOME)"
  type: boolean?
  inputBinding:
    prefix: --fix_origin
- id: in_offset
  doc: Offset from the start codon of the dnaA gene. (for
  type: long?
  inputBinding:
    prefix: --offset
- id: in_locus_tag_prefix
  doc: Locus tag prefix (defaut:LOCUS)
  type: string?
  inputBinding:
    prefix: --locus_tag_prefix
- id: in_step
  doc: Increment step of locus tag (default:10)
  type: long?
  inputBinding:
    prefix: --step
- id: in_use_separate_tags
  doc: "Use separate tags according to feature types\n[t(=default)|f]"
  type: boolean?
  inputBinding:
    prefix: --use_separate_tags
- id: in_threshold
  doc: "Thresholds for default database search (format:\n\"pident,q_cov,s_cov,e_value\"\
    , default: \"0,75,75,1e-6\")"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_database
  doc: "Additional reference database to be searched against\nprior to the default\
    \ database. (format:\ndb_path[,db_name[,pident,q_cov,s_cov,e_value]])"
  type: File?
  inputBinding:
    prefix: --database
- id: in_references
  doc: "Reference file(s) for OrthoSearch. Use semicolons for\nmultiple files, e.g.\
    \ 'genome1.faa;genome2.gbk'"
  type: File?
  inputBinding:
    prefix: --references
- id: in_aligner
  doc: Aligner to use [ghostx(=default)|blastp|diamond]
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_use_prodigal
  doc: Use Prodigal to predict CDS instead of MGA
  type: boolean?
  inputBinding:
    prefix: --use_prodigal
- id: in_use_gene_marks_two
  doc: "Use GeneMarkS2 to predict CDS instead of MGA.\n[auto|bact|arch]"
  type: long?
  inputBinding:
    prefix: --use_genemarks2
- id: in_use_trnascan
  doc: "Use tRNAscan-SE to predict tRNA instead of Aragorn.\n[bact|arch]"
  type: string?
  inputBinding:
    prefix: --use_trnascan
- id: in_use_rn_ammer
  doc: "Use RNAmmer to predict rRNA instead of Barrnap.\n[bact|arch]"
  type: string?
  inputBinding:
    prefix: --use_rnammer
- id: in_g_code
  doc: Genetic code [11(=default),4(=Mycoplasma)]
  type: long?
  inputBinding:
    prefix: --gcode
- id: in_no_hmm
  doc: Disable HMMscan
  type: boolean?
  inputBinding:
    prefix: --no_hmm
- id: in_no_cdd
  doc: Disable CDDsearch
  type: boolean?
  inputBinding:
    prefix: --no_cdd
- id: in_no_cds
  doc: Disable CDS prediction
  type: boolean?
  inputBinding:
    prefix: --no_cds
- id: in_no_rrna
  doc: Disable rRNA prediction
  type: boolean?
  inputBinding:
    prefix: --no_rrna
- id: in_no_trna
  doc: Disable tRNA prediction
  type: boolean?
  inputBinding:
    prefix: --no_trna
- id: in_no_crisp_r
  doc: Disable CRISPR prediction
  type: boolean?
  inputBinding:
    prefix: --no_crispr
- id: in_gff
  doc: "[Preliminary implementation] Read GFF to import\nstructural annotation. Ignores\
    \ --use_original_name,\n--sort_sequence, --fix_origin."
  type: string?
  inputBinding:
    prefix: --gff
- id: in_seq_names
  doc: Sequence names for each sequence (for complete genome)
  type: string?
  inputBinding:
    prefix: --seq_names
- id: in_seq_types
  doc: "Sequence types for each sequence (chromosome/plasmid,\nfor complete genome)"
  type: string?
  inputBinding:
    prefix: --seq_types
- id: in_seq_topologies
  doc: "Sequence topologies for each sequence\n(linear/circular, for complete genome)"
  type: string?
  inputBinding:
    prefix: --seq_topologies
- id: in_additional_modifiers
  doc: Additional modifiers for source features
  type: string?
  inputBinding:
    prefix: --additional_modifiers
- id: in_metadata_file
  doc: "Path to a metadata file (optional for DDBJ submission\nfile)"
  type: File?
  inputBinding:
    prefix: --metadata_file
- id: in_center_name
  doc: "Genome center name (optional for GenBank submission\nfile)"
  type: File?
  inputBinding:
    prefix: --center_name
- id: in_cpu
  doc: Number of CPUs to use
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_use_locus_tag_as_gene_id
  doc: "Use locustag as gene ID for FASTA and GFF. (Useful\nwhen providing DFAST results\
    \ to other tools such as\nRoary)"
  type: boolean?
  inputBinding:
    prefix: --use_locustag_as_gene_id
- id: in_db_root
  doc: DB root directory (default:APP_ROOT/db
  type: File?
  inputBinding:
    prefix: --dbroot
- id: in_force
  doc: Force overwriting output
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_debug
  doc: "Run in debug mode (Extra logging and retaining\ntemporary files)"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_show_config
  doc: Show pipeline configuration and exit
  type: boolean?
  inputBinding:
    prefix: --show_config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory (default:OUT)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfast:1.2.13--h8b12597_0
cwlVersion: v1.1
baseCommand:
- dfast

version 1.0

task Dfast {
  input {
    File? genome
    Directory? out
    File? config
    String? organism
    String? strain
    Boolean? complete
    Boolean? use_original_name
    Boolean? sort_sequence
    Int? minimum_length
    Boolean? fix_origin
    Int? offset
    String? locus_tag_prefix
    Int? step
    Boolean? use_separate_tags
    Float? threshold
    File? database
    File? references
    String? aligner
    Boolean? use_prodigal
    Int? use_gene_marks_two
    String? use_trnascan
    String? use_rn_ammer
    Int? g_code
    Boolean? no_hmm
    Boolean? no_cdd
    Boolean? no_cds
    Boolean? no_rrna
    Boolean? no_trna
    Boolean? no_crisp_r
    String? gff
    String? seq_names
    String? seq_types
    String? seq_topologies
    String? additional_modifiers
    File? metadata_file
    File? center_name
    Int? cpu
    Boolean? use_locus_tag_as_gene_id
    File? db_root
    Boolean? force
    Boolean? debug
    Boolean? show_config
  }
  command <<<
    dfast \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(complete) then ("--complete " +  '"' + complete + '"') else ""} \
      ~{if defined(use_original_name) then ("--use_original_name " +  '"' + use_original_name + '"') else ""} \
      ~{if defined(sort_sequence) then ("--sort_sequence " +  '"' + sort_sequence + '"') else ""} \
      ~{if defined(minimum_length) then ("--minimum_length " +  '"' + minimum_length + '"') else ""} \
      ~{if (fix_origin) then "--fix_origin" else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(locus_tag_prefix) then ("--locus_tag_prefix " +  '"' + locus_tag_prefix + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(use_separate_tags) then ("--use_separate_tags " +  '"' + use_separate_tags + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(references) then ("--references " +  '"' + references + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if (use_prodigal) then "--use_prodigal" else ""} \
      ~{if defined(use_gene_marks_two) then ("--use_genemarks2 " +  '"' + use_gene_marks_two + '"') else ""} \
      ~{if defined(use_trnascan) then ("--use_trnascan " +  '"' + use_trnascan + '"') else ""} \
      ~{if defined(use_rn_ammer) then ("--use_rnammer " +  '"' + use_rn_ammer + '"') else ""} \
      ~{if defined(g_code) then ("--gcode " +  '"' + g_code + '"') else ""} \
      ~{if (no_hmm) then "--no_hmm" else ""} \
      ~{if (no_cdd) then "--no_cdd" else ""} \
      ~{if (no_cds) then "--no_cds" else ""} \
      ~{if (no_rrna) then "--no_rrna" else ""} \
      ~{if (no_trna) then "--no_trna" else ""} \
      ~{if (no_crisp_r) then "--no_crispr" else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(seq_names) then ("--seq_names " +  '"' + seq_names + '"') else ""} \
      ~{if defined(seq_types) then ("--seq_types " +  '"' + seq_types + '"') else ""} \
      ~{if defined(seq_topologies) then ("--seq_topologies " +  '"' + seq_topologies + '"') else ""} \
      ~{if defined(additional_modifiers) then ("--additional_modifiers " +  '"' + additional_modifiers + '"') else ""} \
      ~{if defined(metadata_file) then ("--metadata_file " +  '"' + metadata_file + '"') else ""} \
      ~{if defined(center_name) then ("--center_name " +  '"' + center_name + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (use_locus_tag_as_gene_id) then "--use_locustag_as_gene_id" else ""} \
      ~{if defined(db_root) then ("--dbroot " +  '"' + db_root + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (show_config) then "--show_config" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast:1.2.12--h8b12597_0"
  }
  parameter_meta {
    genome: "Genomic FASTA file"
    out: "Output directory (default:OUT)"
    config: "Configuration file (default config will be used if not\\nspecified)"
    organism: "Organism name"
    strain: "Strain name"
    complete: "Treat the query as a complete genome. Not required\\nunless you need INSDC submission files.\\n[t|f(=default)]"
    use_original_name: "Use original sequence names in a query FASTA file\\n[t|f(=default)]"
    sort_sequence: "Sort sequences by length [t(=default)|f]"
    minimum_length: "Minimum sequence length (default:200)"
    fix_origin: "Rotate/flip the chromosome so that the dnaA gene comes\\nfirst. (ONLY FOR A FINISHED GENOME)"
    offset: "Offset from the start codon of the dnaA gene. (for"
    locus_tag_prefix: "Locus tag prefix (defaut:LOCUS)"
    step: "Increment step of locus tag (default:10)"
    use_separate_tags: "Use separate tags according to feature types\\n[t(=default)|f]"
    threshold: "Thresholds for default database search (format:\\n\\\"pident,q_cov,s_cov,e_value\\\", default: \\\"0,75,75,1e-6\\\")"
    database: "Additional reference database to be searched against\\nprior to the default database. (format:\\ndb_path[,db_name[,pident,q_cov,s_cov,e_value]])"
    references: "Reference file(s) for OrthoSearch. Use semicolons for\\nmultiple files, e.g. 'genome1.faa;genome2.gbk'"
    aligner: "Aligner to use [ghostx(=default)|blastp|diamond]"
    use_prodigal: "Use Prodigal to predict CDS instead of MGA"
    use_gene_marks_two: "Use GeneMarkS2 to predict CDS instead of MGA.\\n[auto|bact|arch]"
    use_trnascan: "Use tRNAscan-SE to predict tRNA instead of Aragorn.\\n[bact|arch]"
    use_rn_ammer: "Use RNAmmer to predict rRNA instead of Barrnap.\\n[bact|arch]"
    g_code: "Genetic code [11(=default),4(=Mycoplasma)]"
    no_hmm: "Disable HMMscan"
    no_cdd: "Disable CDDsearch"
    no_cds: "Disable CDS prediction"
    no_rrna: "Disable rRNA prediction"
    no_trna: "Disable tRNA prediction"
    no_crisp_r: "Disable CRISPR prediction"
    gff: "[Preliminary implementation] Read GFF to import\\nstructural annotation. Ignores --use_original_name,\\n--sort_sequence, --fix_origin."
    seq_names: "Sequence names for each sequence (for complete genome)"
    seq_types: "Sequence types for each sequence (chromosome/plasmid,\\nfor complete genome)"
    seq_topologies: "Sequence topologies for each sequence\\n(linear/circular, for complete genome)"
    additional_modifiers: "Additional modifiers for source features"
    metadata_file: "Path to a metadata file (optional for DDBJ submission\\nfile)"
    center_name: "Genome center name (optional for GenBank submission\\nfile)"
    cpu: "Number of CPUs to use"
    use_locus_tag_as_gene_id: "Use locustag as gene ID for FASTA and GFF. (Useful\\nwhen providing DFAST results to other tools such as\\nRoary)"
    db_root: "DB root directory (default:APP_ROOT/db"
    force: "Force overwriting output"
    debug: "Run in debug mode (Extra logging and retaining\\ntemporary files)"
    show_config: "Show pipeline configuration and exit"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}
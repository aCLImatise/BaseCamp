version 1.0

task FunannotatePredict {
  input {
    Boolean? genome_multifasta_file
    Directory? out
    Boolean? species
    Boolean? parameters
    Boolean? isolate
    Boolean? strain
    Boolean? name
    Boolean? numbering
    Boolean? maker_gff
    Boolean? pasa_gff
    Boolean? other_gff
    Boolean? rna_bam
    Boolean? string_tie
    Boolean? weights
    Boolean? augustus_species
    Boolean? min_training_models
    Boolean? genemark_mode
    Boolean? genemark_mod
    Boolean? busco_seed_species
    Boolean? optimize_augustus
    Boolean? busco_db
    Boolean? organism
    Boolean? ploidy
    Boolean? tbl_two_asn
    Boolean? database
    Boolean? protein_evidence
    Boolean? protein_alignments
    Boolean? p_two_g_p_ident
    Boolean? p_two_g_diamond_db
    Boolean? p_two_g_prefilter
    Boolean? transcript_evidence
    Boolean? transcript_alignments
    Boolean? augustus_gff
    Boolean? genemark_gtf
    Boolean? trnascan
    Boolean? min_intron_len
    Boolean? max_intron_len
    Boolean? soft_mask
    Boolean? min_prot_len
    Boolean? repeats_two_evm
    Boolean? keep_evm
    Int? evm_partition_interval
    Boolean? no_evm_partitions
    Boolean? repeat_filter
    Boolean? keep_no_stops
    Boolean? seq_center
    Boolean? seq_accession
    Boolean? force
    Boolean? cpus
    Boolean? no_progress
    String arguments
  }
  command <<<
    funannotate predict \
      ~{arguments} \
      ~{if (genome_multifasta_file) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (parameters) then "--parameters" else ""} \
      ~{if (isolate) then "--isolate" else ""} \
      ~{if (strain) then "--strain" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (numbering) then "--numbering" else ""} \
      ~{if (maker_gff) then "--maker_gff" else ""} \
      ~{if (pasa_gff) then "--pasa_gff" else ""} \
      ~{if (other_gff) then "--other_gff" else ""} \
      ~{if (rna_bam) then "--rna_bam" else ""} \
      ~{if (string_tie) then "--stringtie" else ""} \
      ~{if (weights) then "--weights" else ""} \
      ~{if (augustus_species) then "--augustus_species" else ""} \
      ~{if (min_training_models) then "--min_training_models" else ""} \
      ~{if (genemark_mode) then "--genemark_mode" else ""} \
      ~{if (genemark_mod) then "--genemark_mod" else ""} \
      ~{if (busco_seed_species) then "--busco_seed_species" else ""} \
      ~{if (optimize_augustus) then "--optimize_augustus" else ""} \
      ~{if (busco_db) then "--busco_db" else ""} \
      ~{if (organism) then "--organism" else ""} \
      ~{if (ploidy) then "--ploidy" else ""} \
      ~{if (tbl_two_asn) then "--tbl2asn" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (protein_evidence) then "--protein_evidence" else ""} \
      ~{if (protein_alignments) then "--protein_alignments" else ""} \
      ~{if (p_two_g_p_ident) then "--p2g_pident" else ""} \
      ~{if (p_two_g_diamond_db) then "--p2g_diamond_db" else ""} \
      ~{if (p_two_g_prefilter) then "--p2g_prefilter" else ""} \
      ~{if (transcript_evidence) then "--transcript_evidence" else ""} \
      ~{if (transcript_alignments) then "--transcript_alignments" else ""} \
      ~{if (augustus_gff) then "--augustus_gff" else ""} \
      ~{if (genemark_gtf) then "--genemark_gtf" else ""} \
      ~{if (trnascan) then "--trnascan" else ""} \
      ~{if (min_intron_len) then "--min_intronlen" else ""} \
      ~{if (max_intron_len) then "--max_intronlen" else ""} \
      ~{if (soft_mask) then "--soft_mask" else ""} \
      ~{if (min_prot_len) then "--min_protlen" else ""} \
      ~{if (repeats_two_evm) then "--repeats2evm" else ""} \
      ~{if (keep_evm) then "--keep_evm" else ""} \
      ~{if defined(evm_partition_interval) then ("--evm-partition-interval " +  '"' + evm_partition_interval + '"') else ""} \
      ~{if (no_evm_partitions) then "--no-evm-partitions" else ""} \
      ~{if (repeat_filter) then "--repeat_filter" else ""} \
      ~{if (keep_no_stops) then "--keep_no_stops" else ""} \
      ~{if (seq_center) then "--SeqCenter" else ""} \
      ~{if (seq_accession) then "--SeqAccession" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (no_progress) then "--no-progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0"
  }
  parameter_meta {
    genome_multifasta_file: "Genome multi-FASTA file (softmasked repeats)"
    out: "Output folder name"
    species: "Species name, use quotes for binomial, e.g. \\\"Aspergillus fumigatus\\\""
    parameters: "Ab intio parameters JSON file to use for gene predictors"
    isolate: "Isolate name, e.g. Af293"
    strain: "Strain name, e.g. FGSCA4"
    name: "Locus tag name (assigned by NCBI?). Default: FUN_"
    numbering: "Specify where gene numbering starts. Default: 1"
    maker_gff: "MAKER2 GFF file. Parse results directly to EVM."
    pasa_gff: "PASA generated gene models. filename:weight"
    other_gff: "Annotation pass-through to EVM. filename:weight"
    rna_bam: "RNA-seq mapped to genome to train Augustus/GeneMark-ET"
    string_tie: "StringTie GTF result"
    weights: "Ab-initio predictor and EVM weight. Example: augustus:2 or pasa:10"
    augustus_species: "Augustus species config. Default: uses species name"
    min_training_models: "Minimum number of models to train Augustus. Default: 200"
    genemark_mode: "GeneMark mode. Default: ES [ES,ET]"
    genemark_mod: "GeneMark ini mod file"
    busco_seed_species: "Augustus pre-trained species to start BUSCO. Default: anidulans"
    optimize_augustus: "Run 'optimze_augustus.pl' to refine training (long runtime)"
    busco_db: "BUSCO models. Default: dikarya. `funannotate outgroups --show_buscos`"
    organism: "Fungal-specific options. Default: fungus. [fungus,other]"
    ploidy: "Ploidy of assembly. Default: 1"
    tbl_two_asn: "Assembly parameters for tbl2asn. Default: \\\"-l paired-ends\\\""
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    protein_evidence: "Proteins to map to genome (prot1.fa prot2.fa uniprot.fa). Default: uniprot.fa"
    protein_alignments: "Pre-computed protein alignments in GFF3 format"
    p_two_g_p_ident: "Exonerate percent identity. Default: 80"
    p_two_g_diamond_db: "Premade diamond genome database for protein2genome mapping"
    p_two_g_prefilter: "Pre-filter hits software selection. Default: diamond [tblastn]"
    transcript_evidence: "mRNA/ESTs to align to genome (trans1.fa ests.fa trinity.fa). Default: none"
    transcript_alignments: "Pre-computed transcript alignments in GFF3 format"
    augustus_gff: "Pre-computed AUGUSTUS GFF3 results (must use --stopCodonExcludedFromCDS=False)"
    genemark_gtf: "Pre-computed GeneMark GTF results"
    trnascan: "Pre-computed tRNAscanSE results"
    min_intron_len: "Minimum intron length. Default: 10"
    max_intron_len: "Maximum intron length. Default: 3000"
    soft_mask: "Softmasked length threshold for GeneMark. Default: 2000"
    min_prot_len: "Minimum protein length. Default: 50"
    repeats_two_evm: "Use repeats in EVM consensus model building"
    keep_evm: "Keep existing EVM results (for rerunning pipeline)"
    evm_partition_interval: "length between genes to make a partition: Default: 1500"
    no_evm_partitions: "Do not split contigs into partitions"
    repeat_filter: "Repetitive gene model filtering. Default: overlap blast [overlap,blast,none]"
    keep_no_stops: "Keep gene models without valid stops"
    seq_center: "Sequencing facilty for NCBI tbl file. Default: CFMR"
    seq_accession: "Sequence accession number for NCBI tbl file. Default: 12345"
    force: "Annotated unmasked genome"
    cpus: "Number of CPUs to use. Default: 2"
    no_progress: "Do not print progress to stdout for long sub jobs"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}
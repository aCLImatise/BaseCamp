version 1.0

task FunannotatePredict {
  input {
    Boolean? genome_multifasta_file
    Boolean? out
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
    Boolean? transcript_evidence
    Boolean? transcript_alignments
    Boolean? augustus_gff
    Boolean? genemark_gtf
    Boolean? min_intron_len
    Boolean? max_intron_len
    Boolean? soft_mask
    Boolean? min_prot_len
    Boolean? repeats_two_evm
    Boolean? repeat_filter
    Boolean? keep_no_stops
    Boolean? keep_evm
    Boolean? seq_center
    Boolean? seq_accession
    Boolean? force
    Boolean? cpus
    String arguments
  }
  command <<<
    funannotate predict \
      ~{arguments} \
      ~{true="--input" false="" genome_multifasta_file} \
      ~{true="--out" false="" out} \
      ~{true="--species" false="" species} \
      ~{true="--parameters" false="" parameters} \
      ~{true="--isolate" false="" isolate} \
      ~{true="--strain" false="" strain} \
      ~{true="--name" false="" name} \
      ~{true="--numbering" false="" numbering} \
      ~{true="--maker_gff" false="" maker_gff} \
      ~{true="--pasa_gff" false="" pasa_gff} \
      ~{true="--other_gff" false="" other_gff} \
      ~{true="--rna_bam" false="" rna_bam} \
      ~{true="--stringtie" false="" string_tie} \
      ~{true="--weights" false="" weights} \
      ~{true="--augustus_species" false="" augustus_species} \
      ~{true="--min_training_models" false="" min_training_models} \
      ~{true="--genemark_mode" false="" genemark_mode} \
      ~{true="--genemark_mod" false="" genemark_mod} \
      ~{true="--busco_seed_species" false="" busco_seed_species} \
      ~{true="--optimize_augustus" false="" optimize_augustus} \
      ~{true="--busco_db" false="" busco_db} \
      ~{true="--organism" false="" organism} \
      ~{true="--ploidy" false="" ploidy} \
      ~{true="--tbl2asn" false="" tbl_two_asn} \
      ~{true="--database" false="" database} \
      ~{true="--protein_evidence" false="" protein_evidence} \
      ~{true="--protein_alignments" false="" protein_alignments} \
      ~{true="--transcript_evidence" false="" transcript_evidence} \
      ~{true="--transcript_alignments" false="" transcript_alignments} \
      ~{true="--augustus_gff" false="" augustus_gff} \
      ~{true="--genemark_gtf" false="" genemark_gtf} \
      ~{true="--min_intronlen" false="" min_intron_len} \
      ~{true="--max_intronlen" false="" max_intron_len} \
      ~{true="--soft_mask" false="" soft_mask} \
      ~{true="--min_protlen" false="" min_prot_len} \
      ~{true="--repeats2evm" false="" repeats_two_evm} \
      ~{true="--repeat_filter" false="" repeat_filter} \
      ~{true="--keep_no_stops" false="" keep_no_stops} \
      ~{true="--keep_evm" false="" keep_evm} \
      ~{true="--SeqCenter" false="" seq_center} \
      ~{true="--SeqAccession" false="" seq_accession} \
      ~{true="--force" false="" force} \
      ~{true="--cpus" false="" cpus}
  >>>
  parameter_meta {
    genome_multifasta_file: "Genome multi-FASTA file (softmasked repeats)"
    out: "Output folder name"
    species: "Species name, use quotes for binomial, e.g. \"Aspergillus fumigatus\""
    parameters: "Ab intio parameters JSON file to use for gene predictors"
    isolate: "Isolate name, e.g. Af293"
    strain: "Strain name, e.g. FGSCA4           "
    name: "Locus tag name (assigned by NCBI?). Default: FUN_"
    numbering: "Specify where gene numbering starts. Default: 1"
    maker_gff: "MAKER2 GFF file. Parse results directly to EVM."
    pasa_gff: "PASA generated gene models. filename:weight"
    other_gff: "Annotation pass-through to EVM. filename:weight"
    rna_bam: "RNA-seq mapped to genome to train Augustus/GeneMark-ET "
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
    tbl_two_asn: "Assembly parameters for tbl2asn. Default: \"-l paired-ends\""
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    protein_evidence: "Proteins to map to genome (prot1.fa prot2.fa uniprot.fa). Default: uniprot.fa"
    protein_alignments: "Pre-computed protein alignments in GFF3 format"
    transcript_evidence: "mRNA/ESTs to align to genome (trans1.fa ests.fa trinity.fa). Default: none"
    transcript_alignments: "Pre-computed transcript alignments in GFF3 format"
    augustus_gff: "Pre-computed AUGUSTUS GFF3 results (must use --stopCodonExcludedFromCDS=False)"
    genemark_gtf: "Pre-computed GeneMark GTF results"
    min_intron_len: "Minimum intron length. Default: 10"
    max_intron_len: "Maximum intron length. Default: 3000"
    soft_mask: "Softmasked length threshold for GeneMark. Default: 2000"
    min_prot_len: "Minimum protein length. Default: 50"
    repeats_two_evm: "Use repeats in EVM consensus model building"
    repeat_filter: "Repetitive gene model filtering. Default: overlap blast [overlap,blast,none]"
    keep_no_stops: "Keep gene models without valid stops"
    keep_evm: "Keep existing EVM results (for rerunning pipeline)"
    seq_center: "Sequencing facilty for NCBI tbl file. Default: CFMR"
    seq_accession: "Sequence accession number for NCBI tbl file. Default: 12345"
    force: "Annotated unmasked genome"
    cpus: "Number of CPUs to use. Default: 2"
    arguments: ""
  }
}
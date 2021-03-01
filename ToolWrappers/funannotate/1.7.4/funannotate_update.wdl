version 1.0

task FunannotateUpdate {
  input {
    Boolean? funannotate_folder_genome
    Boolean? gff
    Boolean? species
    Directory? out
    Boolean? leftforward_fastq_illumina
    Boolean? rightreverse_fastq_illumina
    Boolean? single
    Boolean? stranded
    Boolean? left_norm
    Boolean? right_norm
    Boolean? single_norm
    Boolean? pac_bio_iso_seq
    Boolean? nano_pore_cdna
    Boolean? nano_pore_mrna
    Boolean? trinity
    Boolean? jaccard_clip
    Boolean? no_normalize_reads
    Boolean? no_trim_mo_matic
    Boolean? memory
    Boolean? coverage
    Boolean? min_coverage
    Boolean? pasa_config
    Boolean? pasa_db
    Boolean? aligners
    Boolean? max_intron_len
    Boolean? min_prot_len
    Boolean? alt_transcripts
    Boolean? p_two_g
    Boolean? tbl_two_asn
    Boolean? name
    Boolean? sbt
    Boolean? strain
    Boolean? isolate
    Boolean? seq_center
    Boolean? seq_accession
    Boolean? cpus
    String or
  }
  command <<<
    funannotate update \
      ~{or} \
      ~{if (funannotate_folder_genome) then "--input" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (leftforward_fastq_illumina) then "--left" else ""} \
      ~{if (rightreverse_fastq_illumina) then "--right" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (left_norm) then "--left_norm" else ""} \
      ~{if (right_norm) then "--right_norm" else ""} \
      ~{if (single_norm) then "--single_norm" else ""} \
      ~{if (pac_bio_iso_seq) then "--pacbio_isoseq" else ""} \
      ~{if (nano_pore_cdna) then "--nanopore_cdna" else ""} \
      ~{if (nano_pore_mrna) then "--nanopore_mrna" else ""} \
      ~{if (trinity) then "--trinity" else ""} \
      ~{if (jaccard_clip) then "--jaccard_clip" else ""} \
      ~{if (no_normalize_reads) then "--no_normalize_reads" else ""} \
      ~{if (no_trim_mo_matic) then "--no_trimmomatic" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (min_coverage) then "--min_coverage" else ""} \
      ~{if (pasa_config) then "--pasa_config" else ""} \
      ~{if (pasa_db) then "--pasa_db" else ""} \
      ~{if (aligners) then "--aligners" else ""} \
      ~{if (max_intron_len) then "--max_intronlen" else ""} \
      ~{if (min_prot_len) then "--min_protlen" else ""} \
      ~{if (alt_transcripts) then "--alt_transcripts" else ""} \
      ~{if (p_two_g) then "--p2g" else ""} \
      ~{if (tbl_two_asn) then "--tbl2asn" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (sbt) then "--sbt" else ""} \
      ~{if (strain) then "--strain" else ""} \
      ~{if (isolate) then "--isolate" else ""} \
      ~{if (seq_center) then "--SeqCenter" else ""} \
      ~{if (seq_accession) then "--SeqAccession" else ""} \
      ~{if (cpus) then "--cpus" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    funannotate_folder_genome: "Funannotate folder or Genome in GenBank format (.gbk,.gbff)."
    gff: "Annotation in GFF3 format"
    species: "Species name, use quotes for binomial, e.g. \\\"Aspergillus fumigatus\\\""
    out: "Output folder name"
    leftforward_fastq_illumina: "Left/Forward FASTQ Illumina reads (R1)"
    rightreverse_fastq_illumina: "Right/Reverse FASTQ Illumina reads (R2)"
    single: "Single ended FASTQ reads"
    stranded: "If RNA-seq library stranded. [RF,FR,F,R,no]"
    left_norm: "Normalized left FASTQ reads (R1)"
    right_norm: "Normalized right FASTQ reads (R2)"
    single_norm: "Normalized single-ended FASTQ reads"
    pac_bio_iso_seq: "PacBio long-reads"
    nano_pore_cdna: "Nanopore cDNA long-reads"
    nano_pore_mrna: "Nanopore mRNA direct long-reads"
    trinity: "Pre-computed Trinity transcripts (FASTA)"
    jaccard_clip: "Turn on jaccard clip for dense genomes [Recommended for fungi]"
    no_normalize_reads: "Skip read Normalization"
    no_trim_mo_matic: "Skip Quality Trimming of reads"
    memory: "RAM to use for Jellyfish. Default: 50G"
    coverage: "Depth to normalize reads. Default: 50"
    min_coverage: "Min depth for normalizing reads. Default: 5"
    pasa_config: "PASA assembly config file, i.e. from previous PASA run"
    pasa_db: "Database to use. Default: sqlite [mysql,sqlite]"
    aligners: "Aligners to use with PASA: Default: minimap2 blat [gmap]"
    max_intron_len: "Maximum intron length. Default: 3000"
    min_prot_len: "Minimum protein length. Default: 50"
    alt_transcripts: "Expression threshold (percent) to keep alt transcripts. Default: 0.1 [0-1]"
    p_two_g: "NCBI p2g file (if updating NCBI annotation)"
    tbl_two_asn: "Assembly parameters for tbl2asn. Example: \\\"-l paired-ends\\\""
    name: "Locus tag name (assigned by NCBI?). Default: use existing"
    sbt: "NCBI Submission file"
    strain: "Strain name"
    isolate: "Isolate name"
    seq_center: "Sequencing facilty for NCBI tbl file. Default: CFMR"
    seq_accession: "Sequence accession number for NCBI tbl file. Default: 12345"
    cpus: "Number of CPUs to use. Default: 2"
    or: "-f, --fasta              Genome in FASTA format"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}
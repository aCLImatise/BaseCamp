class: CommandLineTool
id: funannotate_train.cwl
inputs:
- id: in_input
  doc: Genome multi-fasta file
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_out
  doc: Output folder name
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_left
  doc: Left/Forward FASTQ Illumina reads (R1)
  type: boolean?
  inputBinding:
    prefix: --left
- id: in_right
  doc: Right/Reverse FASTQ Illumina reads (R2)
  type: boolean?
  inputBinding:
    prefix: --right
- id: in_single
  doc: Single ended FASTQ reads
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_stranded
  doc: If RNA-seq library stranded. [RF,FR,F,R,no]
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_left_norm
  doc: Normalized left FASTQ reads (R1)
  type: boolean?
  inputBinding:
    prefix: --left_norm
- id: in_right_norm
  doc: Normalized right FASTQ reads (R2)
  type: boolean?
  inputBinding:
    prefix: --right_norm
- id: in_single_norm
  doc: Normalized single-ended FASTQ reads
  type: boolean?
  inputBinding:
    prefix: --single_norm
- id: in_pac_bio_iso_seq
  doc: PacBio long-reads
  type: boolean?
  inputBinding:
    prefix: --pacbio_isoseq
- id: in_nano_pore_cdna
  doc: Nanopore cDNA long-reads
  type: boolean?
  inputBinding:
    prefix: --nanopore_cdna
- id: in_nano_pore_mrna
  doc: Nanopore mRNA direct long-reads
  type: boolean?
  inputBinding:
    prefix: --nanopore_mrna
- id: in_trinity
  doc: Pre-computed Trinity transcripts (FASTA)
  type: boolean?
  inputBinding:
    prefix: --trinity
- id: in_jaccard_clip
  doc: Turn on jaccard clip for dense genomes [Recommended for fungi]
  type: boolean?
  inputBinding:
    prefix: --jaccard_clip
- id: in_no_normalize_reads
  doc: Skip read Normalization
  type: boolean?
  inputBinding:
    prefix: --no_normalize_reads
- id: in_no_trim_mo_matic
  doc: Skip Quality Trimming of reads
  type: boolean?
  inputBinding:
    prefix: --no_trimmomatic
- id: in_memory
  doc: 'RAM to use for Jellyfish. Default: 50G'
  type: boolean?
  inputBinding:
    prefix: --memory
- id: in_coverage
  doc: 'Depth to normalize reads. Default: 50'
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_min_coverage
  doc: 'Min depth for normalizing reads. Default: 5'
  type: boolean?
  inputBinding:
    prefix: --min_coverage
- id: in_pasa_db
  doc: 'Database to use. Default: sqlite [mysql,sqlite]'
  type: boolean?
  inputBinding:
    prefix: --pasa_db
- id: in_aligners
  doc: 'Aligners to use with PASA: Default: minimap2 blat [gmap]'
  type: boolean?
  inputBinding:
    prefix: --aligners
- id: in_pasa_min_pct_aligned
  doc: 'PASA --MIN_PERCENT_ALIGNED. Default: 90'
  type: boolean?
  inputBinding:
    prefix: --pasa_min_pct_aligned
- id: in_pasa_min_avg_per_id
  doc: 'PASA --MIN_AVG_PER_ID. Default: 95'
  type: boolean?
  inputBinding:
    prefix: --pasa_min_avg_per_id
- id: in_pasa_num_bp_splice
  doc: 'PASA --NUM_BP_PERFECT_SPLICE_BOUNDARY. Default: 3'
  type: boolean?
  inputBinding:
    prefix: --pasa_num_bp_splice
- id: in_max_intron_len
  doc: 'Maximum intron length. Default: 3000'
  type: boolean?
  inputBinding:
    prefix: --max_intronlen
- id: in_species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_strain
  doc: Strain name
  type: boolean?
  inputBinding:
    prefix: --strain
- id: in_isolate
  doc: Isolate name
  type: boolean?
  inputBinding:
    prefix: --isolate
- id: in_cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_no_progress
  doc: Do not print progress to stdout for long sub jobs
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output folder name
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- funannotate
- train

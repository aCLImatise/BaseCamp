class: CommandLineTool
id: funannotate_util_update.cwl
inputs:
- id: update
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: Genome in FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: gff
  doc: Annotation in GFF3 format
  type: boolean
  inputBinding:
    prefix: --gff
- id: species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: out
  doc: Output folder name
  type: boolean
  inputBinding:
    prefix: --out
- id: left
  doc: Left/Forward FASTQ Illumina reads (R1)
  type: boolean
  inputBinding:
    prefix: --left
- id: right
  doc: Right/Reverse FASTQ Illumina reads (R2)
  type: boolean
  inputBinding:
    prefix: --right
- id: single
  doc: Single ended FASTQ reads
  type: boolean
  inputBinding:
    prefix: --single
- id: stranded
  doc: If RNA-seq library stranded. [RF,FR,F,R,no]
  type: boolean
  inputBinding:
    prefix: --stranded
- id: left_norm
  doc: Normalized left FASTQ reads (R1)
  type: boolean
  inputBinding:
    prefix: --left_norm
- id: right_norm
  doc: Normalized right FASTQ reads (R2)
  type: boolean
  inputBinding:
    prefix: --right_norm
- id: single_norm
  doc: Normalized single-ended FASTQ reads
  type: boolean
  inputBinding:
    prefix: --single_norm
- id: pac_bio_iso_seq
  doc: PacBio long-reads
  type: boolean
  inputBinding:
    prefix: --pacbio_isoseq
- id: nano_pore_cdna
  doc: Nanopore cDNA long-reads
  type: boolean
  inputBinding:
    prefix: --nanopore_cdna
- id: nano_pore_mrna
  doc: Nanopore mRNA direct long-reads
  type: boolean
  inputBinding:
    prefix: --nanopore_mrna
- id: trinity
  doc: Pre-computed Trinity transcripts (FASTA)
  type: boolean
  inputBinding:
    prefix: --trinity
- id: jaccard_clip
  doc: Turn on jaccard clip for dense genomes [Recommended for fungi]
  type: boolean
  inputBinding:
    prefix: --jaccard_clip
- id: no_normalize_reads
  doc: Skip read Normalization
  type: boolean
  inputBinding:
    prefix: --no_normalize_reads
- id: no_trim_mo_matic
  doc: Skip Quality Trimming of reads
  type: boolean
  inputBinding:
    prefix: --no_trimmomatic
- id: memory
  doc: 'RAM to use for Jellyfish. Default: 50G'
  type: boolean
  inputBinding:
    prefix: --memory
- id: coverage
  doc: 'Depth to normalize reads. Default: 50'
  type: boolean
  inputBinding:
    prefix: --coverage
- id: min_coverage
  doc: 'Min depth for normalizing reads. Default: 5'
  type: boolean
  inputBinding:
    prefix: --min_coverage
- id: pasa_config
  doc: PASA assembly config file, i.e. from previous PASA run
  type: boolean
  inputBinding:
    prefix: --pasa_config
- id: pasa_db
  doc: 'Database to use. Default: sqlite [mysql,sqlite]'
  type: boolean
  inputBinding:
    prefix: --pasa_db
- id: stringent_alignment_overlap
  doc: '. Default: 30.0'
  type: string
  inputBinding:
    prefix: --stringent_alignment_overlap
- id: aligners
  doc: 'Aligners to use with PASA: Default: minimap2 blat [gmap]'
  type: boolean
  inputBinding:
    prefix: --aligners
- id: max_intron_len
  doc: 'Maximum intron length. Default: 3000'
  type: boolean
  inputBinding:
    prefix: --max_intronlen
- id: min_prot_len
  doc: 'Minimum protein length. Default: 50'
  type: boolean
  inputBinding:
    prefix: --min_protlen
- id: alt_transcripts
  doc: 'Expression threshold (percent) to keep alt transcripts. Default: 0.1 [0-1]'
  type: boolean
  inputBinding:
    prefix: --alt_transcripts
- id: p2g
  doc: NCBI p2g file (if updating NCBI annotation)
  type: boolean
  inputBinding:
    prefix: --p2g
- id: tbl2asn
  doc: 'Assembly parameters for tbl2asn. Example: "-l paired-ends"           '
  type: boolean
  inputBinding:
    prefix: --tbl2asn
- id: name
  doc: 'Locus tag name (assigned by NCBI?). Default: use existing  '
  type: boolean
  inputBinding:
    prefix: --name
- id: sbt
  doc: 'NCBI Submission file        '
  type: boolean
  inputBinding:
    prefix: --sbt
- id: species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: strain
  doc: Strain name
  type: boolean
  inputBinding:
    prefix: --strain
- id: isolate
  doc: Isolate name
  type: boolean
  inputBinding:
    prefix: --isolate
- id: seq_center
  doc: 'Sequencing facilty for NCBI tbl file. Default: CFMR'
  type: boolean
  inputBinding:
    prefix: --SeqCenter
- id: seq_accession
  doc: 'Sequence accession number for NCBI tbl file. Default: 12345'
  type: boolean
  inputBinding:
    prefix: --SeqAccession
- id: cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- update

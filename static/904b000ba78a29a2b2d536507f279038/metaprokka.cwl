class: CommandLineTool
id: ../../../metaprokka.cwl
inputs:
- id: citation
  doc: Print citation for referencing Prokka
  type: boolean
  inputBinding:
    prefix: --citation
- id: quiet
  doc: No screen output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: 'Debug mode: keep all temporary files (default OFF)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: db_dir
  doc: "[X]        Prokka database root folders (default '/tmp/tmplruwoux2/db')"
  type: boolean
  inputBinding:
    prefix: --dbdir
- id: list_db
  doc: List all configured databases
  type: boolean
  inputBinding:
    prefix: --listdb
- id: outdir
  doc: "[X]       Output folder [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --outdir
- id: force
  doc: Force overwriting existing output folder (default OFF)
  type: boolean
  inputBinding:
    prefix: --force
- id: prefix
  doc: "[X]       Filename output prefix [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --prefix
- id: locus_tag
  doc: "[X]     Locus tag prefix [auto] (default '')"
  type: boolean
  inputBinding:
    prefix: --locustag
- id: increment
  doc: "[N]    Locus tag counter increment (default '1')"
  type: boolean
  inputBinding:
    prefix: --increment
- id: gff_ver
  doc: "[N]       GFF version (default '3')"
  type: boolean
  inputBinding:
    prefix: --gffver
- id: prodigal_tf
  doc: "[X]   Prodigal training file (default '')"
  type: boolean
  inputBinding:
    prefix: --prodigaltf
- id: proteins
  doc: "[X]     FASTA or GBK file to use as 1st priority (default '')"
  type: boolean
  inputBinding:
    prefix: --proteins
- id: hmms
  doc: "[X]         Trusted HMM to first annotate from (default '')"
  type: boolean
  inputBinding:
    prefix: --hmms
- id: raw_product
  doc: Do not clean up /product annotation (default OFF)
  type: boolean
  inputBinding:
    prefix: --rawproduct
- id: cds_rna_olap
  doc: Allow [tr]RNA to overlap CDS (default OFF)
  type: boolean
  inputBinding:
    prefix: --cdsrnaolap
- id: evalue
  doc: "[n.n]     Similarity e-value cut-off (default '1e-09')"
  type: boolean
  inputBinding:
    prefix: --evalue
- id: coverage
  doc: "[n.n]   Minimum coverage on query protein (default '80')"
  type: boolean
  inputBinding:
    prefix: --coverage
- id: cpus
  doc: "[N]         Number of CPUs to use [0=all] (default '8')"
  type: boolean
  inputBinding:
    prefix: --cpus
- id: fast
  doc: Fast mode - only use basic BLASTP databases (default OFF)
  type: boolean
  inputBinding:
    prefix: --fast
- id: no_an_no
  doc: For CDS just set /product="unannotated protein" (default OFF)
  type: boolean
  inputBinding:
    prefix: --noanno
- id: min_conti_glen
  doc: "[N] Minimum contig size [NCBI needs 200] (default '1')"
  type: boolean
  inputBinding:
    prefix: --mincontiglen
- id: rf_am
  doc: Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')
  type: boolean
  inputBinding:
    prefix: --rfam
- id: no_rrna
  doc: Don't run rRNA search (default OFF)
  type: boolean
  inputBinding:
    prefix: --norrna
- id: do_trna
  doc: Run tRNA search (default OFF)
  type: boolean
  inputBinding:
    prefix: --dotrna
- id: rn_ammer
  doc: Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)
  type: boolean
  inputBinding:
    prefix: --rnammer
- id: do_tbl_two_asn
  doc: Run tbl2asn (default OFF)
  type: boolean
  inputBinding:
    prefix: --dotbl2asn
- id: contigs_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- metaprokka

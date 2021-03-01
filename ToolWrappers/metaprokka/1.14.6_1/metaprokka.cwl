class: CommandLineTool
id: metaprokka.cwl
inputs:
- id: in_citation
  doc: Print citation for referencing Prokka
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_quiet
  doc: No screen output (default OFF)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: 'Debug mode: keep all temporary files (default OFF)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_db_dir
  doc: "[X]        Prokka database root folders (default '/usr/local/db')"
  type: boolean?
  inputBinding:
    prefix: --dbdir
- id: in_list_db
  doc: List all configured databases
  type: boolean?
  inputBinding:
    prefix: --listdb
- id: in_outdir
  doc: "[X]       Output folder [auto] (default '')"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_force
  doc: Force overwriting existing output folder (default OFF)
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_prefix
  doc: "[X]       Filename output prefix [auto] (default '')"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_locus_tag
  doc: "[X]     Locus tag prefix [auto] (default '')"
  type: boolean?
  inputBinding:
    prefix: --locustag
- id: in_increment
  doc: "[N]    Locus tag counter increment (default '1')"
  type: boolean?
  inputBinding:
    prefix: --increment
- id: in_gff_ver
  doc: "[N]       GFF version (default '3')"
  type: boolean?
  inputBinding:
    prefix: --gffver
- id: in_prodigal_tf
  doc: "[X]   Prodigal training file (default '')"
  type: boolean?
  inputBinding:
    prefix: --prodigaltf
- id: in_proteins
  doc: "[X]     FASTA or GBK file to use as 1st priority (default '')"
  type: boolean?
  inputBinding:
    prefix: --proteins
- id: in_hmms
  doc: "[X]         Trusted HMM to first annotate from (default '')"
  type: boolean?
  inputBinding:
    prefix: --hmms
- id: in_raw_product
  doc: Do not clean up /product annotation (default OFF)
  type: boolean?
  inputBinding:
    prefix: --rawproduct
- id: in_cds_rna_olap
  doc: Allow [tr]RNA to overlap CDS (default OFF)
  type: boolean?
  inputBinding:
    prefix: --cdsrnaolap
- id: in_evalue
  doc: "[n.n]     Similarity e-value cut-off (default '1e-09')"
  type: boolean?
  inputBinding:
    prefix: --evalue
- id: in_coverage
  doc: "[n.n]   Minimum coverage on query protein (default '80')"
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_cpus
  doc: "[N]         Number of CPUs to use [0=all] (default '8')"
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_fast
  doc: Fast mode - only use basic BLASTP databases (default OFF)
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_no_an_no
  doc: For CDS just set /product="unannotated protein" (default OFF)
  type: boolean?
  inputBinding:
    prefix: --noanno
- id: in_min_conti_glen
  doc: "[N] Minimum contig size [NCBI needs 200] (default '1')"
  type: boolean?
  inputBinding:
    prefix: --mincontiglen
- id: in_rf_am
  doc: Enable searching for ncRNAs with Infernal+Rfam (SLOW!) (default '0')
  type: boolean?
  inputBinding:
    prefix: --rfam
- id: in_no_rrna
  doc: Don't run rRNA search (default OFF)
  type: boolean?
  inputBinding:
    prefix: --norrna
- id: in_do_trna
  doc: Run tRNA search (default OFF)
  type: boolean?
  inputBinding:
    prefix: --dotrna
- id: in_rn_ammer
  doc: Prefer RNAmmer over Barrnap for rRNA prediction (default OFF)
  type: boolean?
  inputBinding:
    prefix: --rnammer
- id: in_do_tbl_two_asn
  doc: Run tbl2asn (default OFF)
  type: boolean?
  inputBinding:
    prefix: --dotbl2asn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "[X]       Output folder [auto] (default '')"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_force
  doc: Force overwriting existing output folder (default OFF)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_prefix
  doc: "[X]       Filename output prefix [auto] (default '')"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- metaprokka

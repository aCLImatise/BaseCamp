class: CommandLineTool
id: wrapper_phage_contigs_sorter_iPlant.pl.cwl
inputs:
- id: fna
  doc: Fasta file of contigs
  type: boolean
  inputBinding:
    prefix: --fna
- id: dataset
  doc: Code dataset (DEFAULT "VIRSorter")
  type: boolean
  inputBinding:
    prefix: --dataset
- id: cp
  doc: 'Custom phage sequence '
  type: boolean
  inputBinding:
    prefix: --cp
- id: db
  doc: Either "1" (DEFAULT Refseqdb) or "2" (Viromedb)
  type: boolean
  inputBinding:
    prefix: --db
- id: wdir
  doc: Working directory (DEFAULT $PWD/virsorter-out/) Will be created if not existing.
  type: boolean
  inputBinding:
    prefix: --wdir
- id: n_cpu
  doc: 'Number of CPUs (default: 4)'
  type: boolean
  inputBinding:
    prefix: --ncpu
- id: vi_rome
  doc: 'Add this flag to enable virome decontamination mode, for datasets mostly viral
    to force the use of generic metrics instead of  calculated from the whole dataset.
    (default: off)'
  type: boolean
  inputBinding:
    prefix: --virome
- id: data_dir
  doc: Path to "virsorter-data" directory (e.g. /path/to/virsorter-data)
  type: boolean
  inputBinding:
    prefix: --data-dir
- id: diamond
  doc: Use diamond (in "--more-sensitive" mode) instead of blastp.  Diamond is much
    faster than blastp and may be useful for adding  many custom phages, or for processing
    extremely large Fasta files.  Unless you specify --diamond, VirSorter will use
    blastp.
  type: boolean
  inputBinding:
    prefix: --diamond
- id: keep_db
  doc: Specifying this flag keeps the new HMM and BLAST databases created  after adding
    custom phages. This is useful if you have custom phages that you want to be included
    in several different analyses and want  to save the database and point VirSorter
    to it in subsequent runs. By default, this is off, and you should only specify
    this flag if  you're SURE you need it.
  type: boolean
  inputBinding:
    prefix: --keep-db
- id: no_c
  doc: Use this option if you have issues with empty output files, i.e. 0 viruses
    predicted by VirSorter. This make VirSorter use a perl function  instead of the
    C script to calculate enrichment statistics. Note that  VirSorter will be slower
    with this option.
  type: boolean
  inputBinding:
    prefix: --no_c
outputs: []
cwlVersion: v1.1
baseCommand:
- wrapper_phage_contigs_sorter_iPlant.pl

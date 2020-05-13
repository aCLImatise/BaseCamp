class: CommandLineTool
id: daijin_configure.cwl
inputs:
- id: json
  doc: 'Output will be in JSON (default: inferred by filename, with TOML as fallback).'
  type: boolean
  inputBinding:
    prefix: --json
- id: yaml
  doc: 'Output will be in YAML (default: inferred by filename, with TOML as fallback).'
  type: boolean
  inputBinding:
    prefix: --yaml
- id: to_ml
  doc: 'Output will be in TOML (default: inferred by filename, with TOML as fallback).'
  type: boolean
  inputBinding:
    prefix: --toml
- id: al
  doc: '[{gsnap,star,hisat,tophat} [{gsnap,star,hisat,tophat} ...]], --aligners [{gsnap,star,hisat,tophat}
    [{gsnap,star,hisat,tophat} ...]] Aligner(s) to use for the analysis. Choices:
    gsnap, star, hisat, tophat'
  type: boolean
  inputBinding:
    prefix: -al
- id: lal
  doc: '[{star,gmap} [{star,gmap} ...]], --long-read-aligners [{star,gmap} [{star,gmap}
    ...]] Aligner(s) to use for long reads. Choices: star, gmap'
  type: boolean
  inputBinding:
    prefix: -lal
- id: as
  doc: '[{class,cufflinks,stringtie,trinity,scallop} [{class,cufflinks,stringtie,trinity,scallop}
    ...]], --assemblers [{class,cufflinks,stringtie,trinity,scallop} [{class,cufflinks,stringtie,trinity,scallop}
    ...]] Assembler(s) to use for the analysis. Choices: class, cufflinks, stringtie,
    trinity, scallop'
  type: boolean
  inputBinding:
    prefix: -as
- id: cluster_config
  doc: Cluster configuration file to write to.
  type: string
  inputBinding:
    prefix: --cluster_config
- id: threads
  doc: 'Maximum number of threads per job. Default: 4'
  type: string
  inputBinding:
    prefix: --threads
- id: out_dir
  doc: 'Output directory. Default if unspecified: chosen name.'
  type: string
  inputBinding:
    prefix: --out-dir
- id: out
  doc: Output file. If not specified, it will be printed to STDOUT.Daijin will try
    to infer the type of configuration (TOML, YAML, JSON) from the output file name,
    with TOML as thedefault. If one of --json, --yaml, --toml flags is specified,
    it will override the filename inference.
  type: string
  inputBinding:
    prefix: --out
- id: scheduler
  doc: 'Scheduler to use. Default: None - ie, either execute everything on the local
    machine or use DRMAA to submit and control jobs (recommended).'
  type: string
  inputBinding:
    prefix: --scheduler
- id: exe
  doc: Configuration file for the executables.
  type: string
  inputBinding:
    prefix: --exe
- id: queue
  doc: Name of queue to be used in the HPC. Required if a scheduler has been selected.
  type: string
  inputBinding:
    prefix: --queue
- id: name
  doc: Name of the species under analysis.
  type: string
  inputBinding:
    prefix: --name
- id: genome
  doc: Reference genome for the analysis, in FASTA format. Required.
  type: string
  inputBinding:
    prefix: --genome
- id: transcriptome
  doc: Reference annotation, in GFF3 or GTF format.
  type: string
  inputBinding:
    prefix: --transcriptome
- id: i
  doc: 'INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE Range into which intron
    lengths should fall, as a couple of integers. Transcripts with intron lengths
    outside of this range will be penalised. Default: (60, 900)'
  type: long
  inputBinding:
    prefix: -i
- id: flank
  doc: Amount of flanking for grouping transcripts in superloci during the pick phase
    of Mikado.
  type: string
  inputBinding:
    prefix: --flank
- id: prot_db
  doc: Protein database to compare against, for Mikado.
  type: string[]
  inputBinding:
    prefix: --prot-db
- id: use_blast
  doc: Flag. If set, Daijin will use BLAST instead of DIAMOND.
  type: boolean
  inputBinding:
    prefix: --use-blast
- id: use_trans_decoder
  doc: Flag. If set, Daijin will use TransDecoder instead of Prodigal.
  type: boolean
  inputBinding:
    prefix: --use-transdecoder
outputs: []
cwlVersion: v1.1
baseCommand:
- daijin
- configure

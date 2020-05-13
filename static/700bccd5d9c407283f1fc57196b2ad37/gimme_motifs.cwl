class: CommandLineTool
id: gimme_motifs.cwl
inputs:
- id: input
  doc: FASTA, BED, narrowPeak or region file.
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: Output directory.
  type: string
  inputBinding:
    position: 1
- id: background
  doc: Background type (random,genomic,gc,promoter,custom) or a file with background
    sequences (FASTA, BED or regions)
  type: string
  inputBinding:
    prefix: --background
- id: g
  doc: Genome name or fasta file
  type: string
  inputBinding:
    prefix: -g
- id: de_novo
  doc: Only use de novo motifs
  type: boolean
  inputBinding:
    prefix: --denovo
- id: known
  doc: Only use known motifs
  type: boolean
  inputBinding:
    prefix: --known
- id: no_report
  doc: Don't create a HTML report.
  type: boolean
  inputBinding:
    prefix: --noreport
- id: raw_score
  doc: Don't z-score normalize motif scores
  type: boolean
  inputBinding:
    prefix: --rawscore
- id: no_gc
  doc: Don't use GC% bins
  type: boolean
  inputBinding:
    prefix: --nogc
- id: n_threads
  doc: Number of threads (default 12)
  type: long
  inputBinding:
    prefix: --nthreads
- id: p
  doc: 'PFM file with motifs.(default: gimme.vertebrate.v5.0.pfm)'
  type: string
  inputBinding:
    prefix: -p
- id: tools
  doc: Tools to use, any combination of MDmodule,MEME,MEMEW,D REME,Weeder,GADEM,MotifSampler,Trawler,Improbizer,BioP
    rospector,Posmo,ChIPMunk,AMD,HMS,Homer,XXmotif,ProSamp ler,DiNAMO (default MEME,BioProspector,Homer)
  type: string
  inputBinding:
    prefix: --tools
- id: analysis
  doc: 'Analysis type: small, medium, large, xl (xl)'
  type: string
  inputBinding:
    prefix: --analysis
- id: keep_intermediate
  doc: Don't delete intermediate files
  type: boolean
  inputBinding:
    prefix: --keepintermediate
- id: single_strand
  doc: Only predict motifs for single + strand (default is both)
  type: boolean
  inputBinding:
    prefix: --singlestrand
- id: fraction
  doc: Fraction of peaks to use for motif predicton (0.2)
  type: string
  inputBinding:
    prefix: --fraction
- id: size
  doc: Region size to use for motif prediction (200). Set to 0 to use the size of
    the input regions.
  type: string
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- motifs

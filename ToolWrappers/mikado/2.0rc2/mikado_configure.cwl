class: CommandLineTool
id: mikado_configure.cwl
inputs:
- id: in_minimum_cdna_length
  doc: Minimum cDNA length for transcripts.
  type: long
  inputBinding:
    prefix: --minimum-cdna-length
- id: in_max_intron_length
  doc: Maximum intron length for transcripts.
  type: long
  inputBinding:
    prefix: --max-intron-length
- id: in_scoring
  doc: "Scoring file to use. Mikado provides the following:\nmammalian.yaml,\nplant.yaml,\n\
    HISTORIC/worm.yaml,\nHISTORIC/athaliana_scoring.yaml,\nHISTORIC/scerevisiae.yaml,\n\
    HISTORIC/celegans_scoring.yaml,\nHISTORIC/insects.yaml,\nHISTORIC/human.yaml,\n\
    HISTORIC/hsapiens_scoring.yaml,\nHISTORIC/dmelanogaster_scoring.yaml,\nHISTORIC/plants.yaml"
  type: File
  inputBinding:
    prefix: --scoring
- id: in_copy_scoring
  doc: File into which to copy the selected scoring file, for modification.
  type: File
  inputBinding:
    prefix: --copy-scoring
- id: in_intronrange__intronrange
  doc: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\nRange into which intron\
    \ lengths should fall, as a couple of integers.\nTranscripts with intron lengths\
    \ outside of this range will be penalised.\nDefault: (60, 900)"
  type: long
  inputBinding:
    prefix: -i
- id: in_subloc_i_out
  doc: Name of the optional subloci output. By default, this will not be produced.
  type: string
  inputBinding:
    prefix: --subloci-out
- id: in_mono_loci_out
  doc: Name of the optional monoloci output. By default, this will not be produced.
  type: string
  inputBinding:
    prefix: --monoloci-out
- id: in_no_pad
  doc: Disable transcript padding. On by default.
  type: boolean
  inputBinding:
    prefix: --no-pad
- id: in_only_reference_update
  doc: 'Flag. If switched on, Mikado will only keep loci where at least one of the
    transcripts     is marked as "reference". CAUTION: new and experimental. If no
    transcript has been marked as reference,     the output will be completely empty!'
  type: boolean
  inputBinding:
    prefix: --only-reference-update
- id: in_exclude_retained_introns
  doc: 'Exclude all retained intron alternative splicing events from the final output.
    Default: False. Retained intron events that do not dirsupt the CDS are kept by
    Mikado in the final output.'
  type: boolean
  inputBinding:
    prefix: --exclude-retained-introns
- id: in_keep_disrupted_cds
  doc: 'Keep in the final output transcripts whose CDS is most probably disrupted
    by a retained intron event. Default: False. Mikado will try to detect these instances
    and exclude them from the final output.'
  type: boolean
  inputBinding:
    prefix: --keep-disrupted-cds
- id: in_check_references
  doc: "Flag. If switched on, Mikado will also check reference models against the\
    \ general\ntranscript requirements, and will also consider them as potential fragments.\
    \ This is useful in the context of e.g.\nupdating an *ab-initio* results with\
    \ data from RNASeq, protein alignments, etc."
  type: boolean
  inputBinding:
    prefix: --check-references
- id: in_dai_jin
  doc: Flag. If set, the configuration file will be also valid for Daijin.
  type: boolean
  inputBinding:
    prefix: --daijin
- id: in_blast_chunks
  doc: 'Number of parallel DIAMOND/BLAST jobs to run. Default: 10.'
  type: long
  inputBinding:
    prefix: --blast-chunks
- id: in_use_blast
  doc: Flag. If switched on, Mikado will use BLAST instead of DIAMOND.
  type: boolean
  inputBinding:
    prefix: --use-blast
- id: in_use_trans_decoder
  doc: Flag. If switched on, Mikado will use TransDecoder instead of Prodigal.
  type: boolean
  inputBinding:
    prefix: --use-transdecoder
- id: in_mode
  doc: "[{nosplit,stringent,lenient,permissive,split} ...]\nMode(s) in which Mikado\
    \ will treat transcripts with multiple ORFs.\n- nosplit: keep the transcripts\
    \ whole.\n- stringent: split multi-orf transcripts if two consecutive ORFs have\
    \ both BLAST hits\nand none of those hits is against the same target.\n- lenient:\
    \ split multi-orf transcripts as in stringent, and additionally, also when\neither\
    \ of the ORFs lacks a BLAST hit (but not both).\n- permissive: like lenient, but\
    \ also split when both ORFs lack BLAST hits\n- split: split multi-orf transcripts\
    \ regardless of what BLAST data is available.\nIf multiple modes are specified,\
    \ Mikado will create a Daijin-compatible configuration file."
  type: string
  inputBinding:
    prefix: --mode
- id: in_scheduler
  doc: 'Scheduler to use. Default: None - ie, either execute everything on the local
    machine or use DRMAA to submit and control jobs (recommended).'
  type: string
  inputBinding:
    prefix: --scheduler
- id: in_exe
  doc: Configuration file for the executables.
  type: File
  inputBinding:
    prefix: --exe
- id: in_cluster_config
  doc: "Cluster configuration file to write to.\n"
  type: File
  inputBinding:
    prefix: --cluster_config
- id: in_seed
  doc: ''
  type: string
  inputBinding:
    prefix: --seed
- id: in_full
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mikado
- configure

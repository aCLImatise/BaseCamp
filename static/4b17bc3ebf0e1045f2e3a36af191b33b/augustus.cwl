class: CommandLineTool
id: augustus.cwl
inputs:
- id: in_strand
  doc: or --strand=backward
  type: string?
  inputBinding:
    prefix: --strand
- id: in_gene_model
  doc: "or --genemodel=exactlyone\npartial      : allow prediction of incomplete genes\
    \ at the sequence boundaries (default)\nintronless   : only predict single-exon\
    \ genes like in prokaryotes and some eukaryotes\ncomplete     : only predict complete\
    \ genes\natleastone   : predict at least one complete gene\nexactlyone   : predict\
    \ exactly one complete gene"
  type: string?
  inputBinding:
    prefix: --genemodel
- id: in_single_strand
  doc: "predict genes independently on each strand, allow overlapping genes on opposite\
    \ strands\nThis option is turned off by default."
  type: string?
  inputBinding:
    prefix: --singlestrand
- id: in_hints_file
  doc: "When this option is used the prediction considering hints (extrinsic information)\
    \ is turned on.\nhintsfilename contains the hints in gff format."
  type: File?
  inputBinding:
    prefix: --hintsfile
- id: in_augustus_config_path
  doc: path to config directory (if not specified as environment variable)
  type: File?
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: in_alternatives_from_evidence
  doc: "/false\nreport alternative transcripts when they are suggested by hints"
  type: string?
  inputBinding:
    prefix: --alternatives-from-evidence
- id: in_alternatives_from_sampling
  doc: "/false\nreport alternative transcripts generated through probabilistic sampling"
  type: string?
  inputBinding:
    prefix: --alternatives-from-sampling
- id: in_min_mean_exon_intron_prob
  doc: For a description of these parameters see section 4 of README.TXT.
  type: long?
  inputBinding:
    prefix: --minmeanexonintronprob
- id: in_protein_profile
  doc: "When this option is used the prediction will consider the protein profile\
    \ provided as parameter.\nThe protein profile extension is described in section\
    \ 7 of README.TXT."
  type: File?
  inputBinding:
    prefix: --proteinprofile
- id: in_progress
  doc: show a progressmeter
  type: string?
  inputBinding:
    prefix: --progress
- id: in_gff_three
  doc: "/off\noutput in gff3 format"
  type: long?
  inputBinding:
    prefix: --gff3
- id: in_prediction_start
  doc: A and B define the range of the sequence for which predictions should be found.
  type: string?
  inputBinding:
    prefix: --predictionStart
- id: in_utr
  doc: "/off\npredict the untranslated regions in addition to the coding sequence.\
    \ This currently works only for a subset of species."
  type: string?
  inputBinding:
    prefix: --UTR
- id: in_no_in_frames_top
  doc: "/false\nDo not report transcripts with in-frame stop codons. Otherwise, intron-spanning\
    \ stop codons could occur. Default: false"
  type: string?
  inputBinding:
    prefix: --noInFrameStop
- id: in_no_prediction
  doc: "/false\nIf true and input is in genbank format, no prediction is made. Useful\
    \ for getting the annotated protein sequences."
  type: string?
  inputBinding:
    prefix: --noprediction
- id: in_unique_geneid
  doc: "/false\nIf true, output gene identifyers like this: seqname.gN"
  type: string?
  inputBinding:
    prefix: --uniqueGeneId
- id: in_species
  doc: ''
  type: string?
  inputBinding:
    prefix: --species
- id: in_parameters
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_query_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- augustus

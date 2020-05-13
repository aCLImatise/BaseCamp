class: CommandLineTool
id: ddrage.cwl
inputs:
- id: verbose
  doc: 'Increase verbosity of output. -v: Show progress of simulation. -vv: Print
    used parameters after simulation. -vvv: Show details for each simulated locus.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: zip
  doc: Write output as gzipped fastq.
  type: boolean
  inputBinding:
    prefix: --zip
- id: get_barcodes
  doc: Write copies of the default barcode files into the current folder.
  type: boolean
  inputBinding:
    prefix: --get-barcodes
- id: debug
  doc: Set debug-friendly values for the data set, i.e. all mutation events and mutation
    types are equally probable.
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: name
  doc: Name for the data set that will be used in the file name. If none is given,
    the name 'RAGEdataset' will be used.
  type: string
  inputBinding:
    prefix: --name
- id: output
  doc: Prefix of the output path. At this point a folder will be created that contains
    all output files created by ddRAGE.
  type: string
  inputBinding:
    prefix: --output
- id: nr_individuals
  doc: 'Number of individuals in the result. Default: 3'
  type: string
  inputBinding:
    prefix: --nr-individuals
- id: loci
  doc: 'Number of loci for which reads will be created or path to a FASTA file with
    predefined fragments. Default: 3'
  type: string
  inputBinding:
    prefix: --loci
- id: read_length
  doc: 'Total sequence length of the reads (including overhang, barcodes, etc.). The
    officially supported and well tested range is 50-500bp but longer or shorter reads
    are also possible. Default: 100'
  type: string
  inputBinding:
    prefix: --read-length
- id: coverage
  doc: 'Expected coverage that will be created by normal duplication and mutations.
    The exact coverage value is determined using a probabilistic process. Default:
    30'
  type: string
  inputBinding:
    prefix: --coverage
- id: hrl_number
  doc: 'Number of Highly Repetitive Loci (HRLs) that will be added, given as fraction
    of total locus size. Example: ``-l 100 --hrl-number 0.1`` for 10 HRLs. Default:
    0.05'
  type: string
  inputBinding:
    prefix: --hrl-number
- id: no_singletons
  doc: Disable generation of singleton reads.
  type: boolean
  inputBinding:
    prefix: --no-singletons
- id: diversity
  doc: 'Parameter for the number of genotypes created per locus. This will be used
    as parameter for a Poisson distribution. Default: 1.0, increase for more alleles/
    genotypes per locus.'
  type: string
  inputBinding:
    prefix: --diversity
- id: gc_content
  doc: 'GC content of the generated sequences. Default: 0.5'
  type: string
  inputBinding:
    prefix: --gc-content
- id: quality_model
  doc: Path to a quality model file (.qmodel.npz). A qmodel file contains a probability
    vector for each read position. For details, please refer to the documentation.
  type: string
  inputBinding:
    prefix: --quality-model
- id: single_end
  doc: 'Write a single-end dataset. Only writes a p5 FASTQ file. Default: False'
  type: boolean
  inputBinding:
    prefix: --single-end
- id: overlap
  doc: Overlap factor (between 0 and 1.0) of randomly generated reads. Default 0
  type: string
  inputBinding:
    prefix: --overlap
- id: multiple_p7_barcodes
  doc: 'Combine individuals with multiple p7 barcodes in one output file. Default:
    False'
  type: boolean
  inputBinding:
    prefix: --multiple-p7-barcodes
- id: coverage_model
  doc: Model to choose coverage values. Can be either 'poisson' or 'betabinomial'.
    The Betabinomial model is the default as it can be easily adapted to different
    coverage profiles using the --BBD-alpha and --BBD-beta parameters.
  type: string
  inputBinding:
    prefix: --coverage-model
- id: bbd_alpha
  doc: 'Alpha parameter of the Beta-binomial distribution. Higher values increase
    the left tailing of the coverage distribution, if the BBD model is used. Default:
    6'
  type: string
  inputBinding:
    prefix: --BBD-alpha
- id: bbd_beta
  doc: 'Beta parameter of the Beta-binomial distribution. Higher values increase the
    right tailing of the coverage distribution, if the BBD model is used. Default:
    2'
  type: string
  inputBinding:
    prefix: --BBD-beta
- id: max_pcr_copies
  doc: 'Maximum number of PCR copies that can be created for each finalized (potentially
    mutated and multiplied) read. Default: 3'
  type: long
  inputBinding:
    prefix: --max-pcr-copies
- id: hrl_max_coverage
  doc: 'Maximum coverage for Highly Repetitive Loci (HRLs) (per individual). The minimum
    coverage is determined as mean + 2 standard deviations of the main coverage generating
    function. Default: 1000'
  type: string
  inputBinding:
    prefix: --hrl-max-coverage
- id: dbr
  doc: "Sequence of the degenerate base region (DBR) in IUPAC ambiguity code. Default:\
    \ 'NNNNNNMMGGACG'. To not include a DBR sequence use --dbr ''"
  type: string
  inputBinding:
    prefix: --dbr
- id: p5_overhang
  doc: "Sequence of the p5 overhang. Default: 'TGCAT'"
  type: string
  inputBinding:
    prefix: --p5-overhang
- id: p7_overhang
  doc: "Sequence of the p7 overhang. Default: 'TAC'"
  type: string
  inputBinding:
    prefix: --p7-overhang
- id: p5_rec_site
  doc: "Sequence of the p5 recognition site. Default: 'ATGCAT'"
  type: string
  inputBinding:
    prefix: --p5-rec-site
- id: p7_rec_site
  doc: "Sequence of the p7 recognition site. Default: 'GTCA'"
  type: string
  inputBinding:
    prefix: --p7-rec-site
- id: barcodes
  doc: "Path to barcodes file or predefined barcode set like 'barcodes', 'small',\
    \ 'full' or 'full'. Default: 'barcodes', a generic population. Take a look at\
    \ the rage/barcode_handler/barcodes folder for more information."
  type: string
  inputBinding:
    prefix: --barcodes
- id: prob_heterozygous
  doc: 'Probability of mutations being heterozygous. Default: 0.5'
  type: string
  inputBinding:
    prefix: --prob-heterozygous
- id: prob_incomplete_digestion
  doc: 'Probability of incomplete digestion for an individual at a locus. Default:
    0.1'
  type: string
  inputBinding:
    prefix: --prob-incomplete-digestion
- id: rate_incomplete_digestion
  doc: 'Expected fraction of reads that are being lost in the event of Incomplete
    Digestion. Default: 0.2'
  type: string
  inputBinding:
    prefix: --rate-incomplete-digestion
- id: prob_pcr_copy
  doc: 'Probability that a (potentially mutated and multiplied) read will receive
    PCR copies. This influences the simulated PCR copy rate. Default: 0.2'
  type: string
  inputBinding:
    prefix: --prob-pcr-copy
- id: hrl_pcr_copies
  doc: 'Probability of PCR copies for HRL reads in relation to normal reads. Default:
    0.9, i.e. the probability for a PCR copy of a HRL read is prob_pcr_copy * hrl_pcr
    copies = 0.2 * 0.9 = 0.18'
  type: string
  inputBinding:
    prefix: --hrl-pcr-copies
- id: singleton_pcr_copies
  doc: 'Probability of PCR copies for singleton reads in relation to normal reads.
    Default: 1/3, i.e. the probability for a PCR copy of a singleton read is prob_pcr_copy
    * singleton_pcr_copies = 0.2 * (1/3) = 0.0666...'
  type: string
  inputBinding:
    prefix: --singleton-pcr-copies
- id: prob_seq_error
  doc: 'Probability of sequencing substitution errors. Default: 0.01'
  type: string
  inputBinding:
    prefix: --prob-seq-error
outputs: []
cwlVersion: v1.1
baseCommand:
- ddrage

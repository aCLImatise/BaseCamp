#!/usr/bin/env cwl-runner

baseCommand:
- ddrage
class: CommandLineTool
cwlVersion: v1.0
id: ddrage
inputs:
- doc: 'Increase verbosity of output. -v: Show progress of simulation. -vv: Print
    used parameters after simulation. -vvv: Show details for each simulated locus.'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Write output as gzipped fastq.
  id: zip
  inputBinding:
    prefix: --zip
  type: boolean
- doc: Write copies of the default barcode files into the current folder.
  id: get_barcodes
  inputBinding:
    prefix: --get-barcodes
  type: boolean
- doc: Set debug-friendly values for the data set, i.e. all mutation events and mutation
    types are equally probable.
  id: debug
  inputBinding:
    prefix: --DEBUG
  type: boolean
- doc: Name for the data set that will be used in the file name. If none is given,
    the name 'RAGEdataset' will be used.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: Prefix of the output path. At this point a folder will be created that contains
    all output files created by ddRAGE.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Number of individuals in the result. Default: 3'
  id: nr_individuals
  inputBinding:
    prefix: --nr-individuals
  type: string
- doc: 'Number of loci for which reads will be created or path to a FASTA file with
    predefined fragments. Default: 3'
  id: loci
  inputBinding:
    prefix: --loci
  type: string
- doc: 'Total sequence length of the reads (including overhang, barcodes, etc.). The
    officially supported and well tested range is 50-500bp but longer or shorter reads
    are also possible. Default: 100'
  id: read_length
  inputBinding:
    prefix: --read-length
  type: string
- doc: 'Expected coverage that will be created by normal duplication and mutations.
    The exact coverage value is determined using a probabilistic process. Default:
    30'
  id: coverage
  inputBinding:
    prefix: --coverage
  type: string
- doc: 'Number of Highly Repetitive Loci (HRLs) that will be added, given as fraction
    of total locus size. Example: ``-l 100 --hrl-number 0.1`` for 10 HRLs. Default:
    0.05'
  id: hrl_number
  inputBinding:
    prefix: --hrl-number
  type: string
- doc: Disable generation of singleton reads.
  id: no_singletons
  inputBinding:
    prefix: --no-singletons
  type: boolean
- doc: 'Parameter for the number of genotypes created per locus. This will be used
    as parameter for a Poisson distribution. Default: 1.0, increase for more alleles/
    genotypes per locus.'
  id: diversity
  inputBinding:
    prefix: --diversity
  type: string
- doc: 'GC content of the generated sequences. Default: 0.5'
  id: gc_content
  inputBinding:
    prefix: --gc-content
  type: string
- doc: Path to a quality model file (.qmodel.npz). A qmodel file contains a probability
    vector for each read position. For details, please refer to the documentation.
  id: quality_model
  inputBinding:
    prefix: --quality-model
  type: string
- doc: 'Write a single-end dataset. Only writes a p5 FASTQ file. Default: False'
  id: single_end
  inputBinding:
    prefix: --single-end
  type: boolean
- doc: Overlap factor (between 0 and 1.0) of randomly generated reads. Default 0
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: 'Combine individuals with multiple p7 barcodes in one output file. Default:
    False'
  id: multiple_p7_barcodes
  inputBinding:
    prefix: --multiple-p7-barcodes
  type: boolean
- doc: Model to choose coverage values. Can be either 'poisson' or 'betabinomial'.
    The Betabinomial model is the default as it can be easily adapted to different
    coverage profiles using the --BBD-alpha and --BBD-beta parameters.
  id: coverage_model
  inputBinding:
    prefix: --coverage-model
  type: string
- doc: 'Alpha parameter of the Beta-binomial distribution. Higher values increase
    the left tailing of the coverage distribution, if the BBD model is used. Default:
    6'
  id: bbd_alpha
  inputBinding:
    prefix: --BBD-alpha
  type: string
- doc: 'Beta parameter of the Beta-binomial distribution. Higher values increase the
    right tailing of the coverage distribution, if the BBD model is used. Default:
    2'
  id: bbd_beta
  inputBinding:
    prefix: --BBD-beta
  type: string
- doc: 'Maximum number of PCR copies that can be created for each finalized (potentially
    mutated and multiplied) read. Default: 3'
  id: max_pcr_copies
  inputBinding:
    prefix: --max-pcr-copies
  type: long
- doc: 'Maximum coverage for Highly Repetitive Loci (HRLs) (per individual). The minimum
    coverage is determined as mean + 2 standard deviations of the main coverage generating
    function. Default: 1000'
  id: hrl_max_coverage
  inputBinding:
    prefix: --hrl-max-coverage
  type: string
- doc: "Sequence of the degenerate base region (DBR) in IUPAC ambiguity code. Default:\
    \ 'NNNNNNMMGGACG'. To not include a DBR sequence use --dbr ''"
  id: dbr
  inputBinding:
    prefix: --dbr
  type: string
- doc: "Sequence of the p5 overhang. Default: 'TGCAT'"
  id: p5_overhang
  inputBinding:
    prefix: --p5-overhang
  type: string
- doc: "Sequence of the p7 overhang. Default: 'TAC'"
  id: p7_overhang
  inputBinding:
    prefix: --p7-overhang
  type: string
- doc: "Sequence of the p5 recognition site. Default: 'ATGCAT'"
  id: p5_rec_site
  inputBinding:
    prefix: --p5-rec-site
  type: string
- doc: "Sequence of the p7 recognition site. Default: 'GTCA'"
  id: p7_rec_site
  inputBinding:
    prefix: --p7-rec-site
  type: string
- doc: "Path to barcodes file or predefined barcode set like 'barcodes', 'small',\
    \ 'full' or 'full'. Default: 'barcodes', a generic population. Take a look at\
    \ the rage/barcode_handler/barcodes folder for more information."
  id: barcodes
  inputBinding:
    prefix: --barcodes
  type: string
- doc: 'Probability of mutations being heterozygous. Default: 0.5'
  id: prob_heterozygous
  inputBinding:
    prefix: --prob-heterozygous
  type: string
- doc: 'Probability of incomplete digestion for an individual at a locus. Default:
    0.1'
  id: prob_incomplete_digestion
  inputBinding:
    prefix: --prob-incomplete-digestion
  type: string
- doc: 'Expected fraction of reads that are being lost in the event of Incomplete
    Digestion. Default: 0.2'
  id: rate_incomplete_digestion
  inputBinding:
    prefix: --rate-incomplete-digestion
  type: string
- doc: 'Probability that a (potentially mutated and multiplied) read will receive
    PCR copies. This influences the simulated PCR copy rate. Default: 0.2'
  id: prob_pcr_copy
  inputBinding:
    prefix: --prob-pcr-copy
  type: string
- doc: 'Probability of PCR copies for HRL reads in relation to normal reads. Default:
    0.9, i.e. the probability for a PCR copy of a HRL read is prob_pcr_copy * hrl_pcr
    copies = 0.2 * 0.9 = 0.18'
  id: hrl_pcr_copies
  inputBinding:
    prefix: --hrl-pcr-copies
  type: string
- doc: 'Probability of PCR copies for singleton reads in relation to normal reads.
    Default: 1/3, i.e. the probability for a PCR copy of a singleton read is prob_pcr_copy
    * singleton_pcr_copies = 0.2 * (1/3) = 0.0666...'
  id: singleton_pcr_copies
  inputBinding:
    prefix: --singleton-pcr-copies
  type: string
- doc: 'Probability of sequencing substitution errors. Default: 0.01'
  id: prob_seq_error
  inputBinding:
    prefix: --prob-seq-error
  type: string

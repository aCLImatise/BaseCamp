class: CommandLineTool
id: rage.cwl
inputs:
- id: in_verbose
  doc: "Increase verbosity of output. -v: Show progress of\nsimulation. -vv: Print\
    \ used parameters after\nsimulation. -vvv: Show details for each simulated\nlocus."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_zip
  doc: Write output as gzipped fastq.
  type: boolean
  inputBinding:
    prefix: --zip
- id: in_get_barcodes
  doc: "Write copies of the default barcode files into the\ncurrent folder."
  type: boolean
  inputBinding:
    prefix: --get-barcodes
- id: in_debug
  doc: "Set debug-friendly values for the data set, i.e. all\nmutation events and\
    \ mutation types are equally\nprobable."
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: in_name
  doc: "Name for the data set that will be used in the file\nname. If none is given,\
    \ the name 'RAGEdataset' will be\nused."
  type: File
  inputBinding:
    prefix: --name
- id: in_output
  doc: "Prefix of the output path. At this point a folder will\nbe created that contains\
    \ all output files created by\nddRAGE."
  type: File
  inputBinding:
    prefix: --output
- id: in_nr_individuals
  doc: 'Number of individuals in the result. Default: 3'
  type: long
  inputBinding:
    prefix: --nr-individuals
- id: in_loci
  doc: "Number of loci for which reads will be created or path\nto a FASTA file with\
    \ predefined fragments. Default: 3"
  type: long
  inputBinding:
    prefix: --loci
- id: in_read_length
  doc: "Total sequence length of the reads (including\noverhang, barcodes, etc.).\
    \ The officially supported\nand well tested range is 50-500bp but longer or\n\
    shorter reads are also possible. Default: 100"
  type: long
  inputBinding:
    prefix: --read-length
- id: in_coverage
  doc: "Expected coverage that will be created by normal\nduplication and mutations.\
    \ The exact coverage value is\ndetermined using a probabilistic process. Default:\
    \ 30"
  type: long
  inputBinding:
    prefix: --coverage
- id: in_hrl_number
  doc: "Number of Highly Repetitive Loci (HRLs) that will be\nadded, given as fraction\
    \ of total locus size. Example:\n``-l 100 --hrl-number 0.1`` for 10 HRLs. Default:\
    \ 0.05"
  type: long
  inputBinding:
    prefix: --hrl-number
- id: in_no_singletons
  doc: Disable generation of singleton reads.
  type: boolean
  inputBinding:
    prefix: --no-singletons
- id: in_diversity
  doc: "Parameter for the number of genotypes created per\nlocus. This will be used\
    \ as parameter for a Poisson\ndistribution. Default: 1.0, increase for more alleles/\n\
    genotypes per locus."
  type: long
  inputBinding:
    prefix: --diversity
- id: in_gc_content
  doc: 'GC content of the generated sequences. Default: 0.5'
  type: double
  inputBinding:
    prefix: --gc-content
- id: in_quality_model
  doc: "Path to a quality model file (.qmodel.npz). A qmodel\nfile contains a probability\
    \ vector for each read\nposition. For details, please refer to the\ndocumentation."
  type: File
  inputBinding:
    prefix: --quality-model
- id: in_single_end
  doc: "Write a single-end dataset. Only writes a p5 FASTQ\nfile. Default: False"
  type: boolean
  inputBinding:
    prefix: --single-end
- id: in_overlap
  doc: "Overlap factor (between 0 and 1.0) of randomly\ngenerated reads. Default 0"
  type: double
  inputBinding:
    prefix: --overlap
- id: in_multiple_p_seven_barcodes
  doc: "Combine individuals with multiple p7 barcodes in one\noutput file. Default:\
    \ False"
  type: File
  inputBinding:
    prefix: --multiple-p7-barcodes
- id: in_coverage_model
  doc: "Model to choose coverage values. Can be either\n'poisson' or 'betabinomial'.\
    \ The Betabinomial model is\nthe default as it can be easily adapted to different\n\
    coverage profiles using the --BBD-alpha and --BBD-beta\nparameters."
  type: string
  inputBinding:
    prefix: --coverage-model
- id: in_bbd_alpha
  doc: "Alpha parameter of the Beta-binomial distribution.\nHigher values increase\
    \ the left tailing of the\ncoverage distribution, if the BBD model is used.\n\
    Default: 6"
  type: long
  inputBinding:
    prefix: --BBD-alpha
- id: in_bbd_beta
  doc: "Beta parameter of the Beta-binomial distribution.\nHigher values increase\
    \ the right tailing of the\ncoverage distribution, if the BBD model is used.\n\
    Default: 2"
  type: long
  inputBinding:
    prefix: --BBD-beta
- id: in_max_pcr_copies
  doc: "Maximum number of PCR copies that can be created for\neach finalized (potentially\
    \ mutated and multiplied)\nread. Default: 3"
  type: long
  inputBinding:
    prefix: --max-pcr-copies
- id: in_hrl_max_coverage
  doc: "Maximum coverage for Highly Repetitive Loci (HRLs)\n(per individual). The\
    \ minimum coverage is determined\nas mean + 2 standard deviations of the main\
    \ coverage\ngenerating function. Default: 1000"
  type: long
  inputBinding:
    prefix: --hrl-max-coverage
- id: in_dbr
  doc: "Sequence of the degenerate base region (DBR) in IUPAC\nambiguity code. Default:\
    \ 'NNNNNNMMGGACG'. To not\ninclude a DBR sequence use --dbr ''"
  type: string
  inputBinding:
    prefix: --dbr
- id: in_p_five_overhang
  doc: "Sequence of the p5 overhang. Default: 'TGCAT'"
  type: long
  inputBinding:
    prefix: --p5-overhang
- id: in_p_seven_overhang
  doc: "Sequence of the p7 overhang. Default: 'TAC'"
  type: long
  inputBinding:
    prefix: --p7-overhang
- id: in_p_five_rec_site
  doc: "Sequence of the p5 recognition site. Default: 'ATGCAT'"
  type: long
  inputBinding:
    prefix: --p5-rec-site
- id: in_p_seven_rec_site
  doc: "Sequence of the p7 recognition site. Default: 'GTCA'"
  type: long
  inputBinding:
    prefix: --p7-rec-site
- id: in_barcodes
  doc: "Path to barcodes file or predefined barcode set like\n'barcodes', 'small',\
    \ 'full' or 'full'. Default:\n'barcodes', a generic population. Take a look at\
    \ the\nrage/barcode_handler/barcodes folder for more\ninformation."
  type: File
  inputBinding:
    prefix: --barcodes
- id: in_event_probabilities
  doc: "PROB_DROPOUT PROB_MUTATION\nProbability profile for the distribution of event\n\
    types (common, dropout, mutation; in this order).\nExample: ``python ddrage.py\
    \ --event-probabilities 0.9\n0.05 0.05`` -> common 90%, dropout 5%, mutation 5%\n\
    (Default). Each entry can be given as a float or a\nstring of python code (see\
    \ example above) which is\nhelpful for small probability values."
  type: double
  inputBinding:
    prefix: --event-probabilities
- id: in_mutation_type_probabilities
  doc: "PROB_INSERTION PROB_DELETION PROB_P5_NA_ALTERNATIVE PROB_P7_NA_ALTERNATIVE\
    \ PROB_P5_NA_DROPOUT PROB_P7_NA_DROPOUT\nProbability profile for the distribution\
    \ of mutation\ntypes (snp, insertion, deletion, p5 na alternative, p7\nna alternative,\
    \ p5 na dropout, p7 na dropout; in this\norder). Example: ``python ddrage.py --mutation-type-\n\
    probabilities 0.8999 0.05 0.05 '0.0001*0.001'\n'0.0001*0.05' '0.0001*0.899' '0.0001*0.05'``\
    \ -> snp\n89.99%, insertion 5%, deletion 5%, p5 na alternative\n0.00001% , p7\
    \ na alternative 0.0005%, p5 na dropout\n0.00899%, p7 na dropout 0.0005% (Default).\
    \ Each entry\ncan be given as a float or a string of python code\n(see example\
    \ above) which is helpful for small\nprobability values."
  type: double
  inputBinding:
    prefix: --mutation-type-probabilities
- id: in_prob_heterozygous
  doc: "Probability of mutations being heterozygous. Default:\n0.5"
  type: double
  inputBinding:
    prefix: --prob-heterozygous
- id: in_prob_incomplete_digestion
  doc: "Probability of incomplete digestion for an individual\nat a locus. Default:\
    \ 0.1"
  type: double
  inputBinding:
    prefix: --prob-incomplete-digestion
- id: in_rate_incomplete_digestion
  doc: "Expected fraction of reads that are being lost in the\nevent of Incomplete\
    \ Digestion. Default: 0.2"
  type: double
  inputBinding:
    prefix: --rate-incomplete-digestion
- id: in_prob_pcr_copy
  doc: "Probability that a (potentially mutated and\nmultiplied) read will receive\
    \ PCR copies. This\ninfluences the simulated PCR copy rate. Default: 0.2"
  type: double
  inputBinding:
    prefix: --prob-pcr-copy
- id: in_hrl_pcr_copies
  doc: "Probability of PCR copies for HRL reads in relation to\nnormal reads. Default:\
    \ 0.9, i.e. the probability for a\nPCR copy of a HRL read is prob_pcr_copy * hrl_pcr\n\
    copies = 0.2 * 0.9 = 0.18"
  type: double
  inputBinding:
    prefix: --hrl-pcr-copies
- id: in_singleton_pcr_copies
  doc: "Probability of PCR copies for singleton reads in\nrelation to normal reads.\
    \ Default: 1/3, i.e. the\nprobability for a PCR copy of a singleton read is\n\
    prob_pcr_copy * singleton_pcr_copies = 0.2 * (1/3) =\n0.0666..."
  type: double
  inputBinding:
    prefix: --singleton-pcr-copies
- id: in_prob_seq_error
  doc: "Probability of sequencing substitution errors.\nDefault: 0.01\n"
  type: double
  inputBinding:
    prefix: --prob-seq-error
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Prefix of the output path. At this point a folder will\nbe created that contains\
    \ all output files created by\nddRAGE."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_multiple_p_seven_barcodes
  doc: "Combine individuals with multiple p7 barcodes in one\noutput file. Default:\
    \ False"
  type: File
  outputBinding:
    glob: $(inputs.in_multiple_p_seven_barcodes)
cwlVersion: v1.1
baseCommand:
- rage

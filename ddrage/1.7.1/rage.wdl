version 1.0

task Rage {
  input {
    Boolean? verbose
    Boolean? zip
    Boolean? get_barcodes
    Boolean? debug
    File? name
    File? prefix_output_path
    Int? nr_individuals
    Int? loci
    Int? read_length
    Int? coverage
    Int? hrl_number
    Boolean? no_singletons
    Int? diversity
    Float? gc_content
    File? quality_model
    Boolean? single_end
    Float? overlap
    File? multiple_p_seven_barcodes
    String? coverage_model
    Int? bbd_alpha
    Int? bbd_beta
    Int? max_pcr_copies
    Int? hrl_max_coverage
    String? dbr
    Int? p_five_overhang
    Int? p_seven_overhang
    Int? p_five_rec_site
    Int? p_seven_rec_site
    File? barcodes
    Float? event_probabilities
    Float? mutation_type_probabilities
    Float? prob_heterozygous
    Float? prob_incomplete_digestion
    Float? rate_incomplete_digestion
    Float? prob_pcr_copy
    Float? hrl_pcr_copies
    Float? singleton_pcr_copies
    Float? prob_seq_error
  }
  command <<<
    rage \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (zip) then "--zip" else ""} \
      ~{if (get_barcodes) then "--get-barcodes" else ""} \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(prefix_output_path) then ("--output " +  '"' + prefix_output_path + '"') else ""} \
      ~{if defined(nr_individuals) then ("--nr-individuals " +  '"' + nr_individuals + '"') else ""} \
      ~{if defined(loci) then ("--loci " +  '"' + loci + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(hrl_number) then ("--hrl-number " +  '"' + hrl_number + '"') else ""} \
      ~{if (no_singletons) then "--no-singletons" else ""} \
      ~{if defined(diversity) then ("--diversity " +  '"' + diversity + '"') else ""} \
      ~{if defined(gc_content) then ("--gc-content " +  '"' + gc_content + '"') else ""} \
      ~{if defined(quality_model) then ("--quality-model " +  '"' + quality_model + '"') else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if (multiple_p_seven_barcodes) then "--multiple-p7-barcodes" else ""} \
      ~{if defined(coverage_model) then ("--coverage-model " +  '"' + coverage_model + '"') else ""} \
      ~{if defined(bbd_alpha) then ("--BBD-alpha " +  '"' + bbd_alpha + '"') else ""} \
      ~{if defined(bbd_beta) then ("--BBD-beta " +  '"' + bbd_beta + '"') else ""} \
      ~{if defined(max_pcr_copies) then ("--max-pcr-copies " +  '"' + max_pcr_copies + '"') else ""} \
      ~{if defined(hrl_max_coverage) then ("--hrl-max-coverage " +  '"' + hrl_max_coverage + '"') else ""} \
      ~{if defined(dbr) then ("--dbr " +  '"' + dbr + '"') else ""} \
      ~{if defined(p_five_overhang) then ("--p5-overhang " +  '"' + p_five_overhang + '"') else ""} \
      ~{if defined(p_seven_overhang) then ("--p7-overhang " +  '"' + p_seven_overhang + '"') else ""} \
      ~{if defined(p_five_rec_site) then ("--p5-rec-site " +  '"' + p_five_rec_site + '"') else ""} \
      ~{if defined(p_seven_rec_site) then ("--p7-rec-site " +  '"' + p_seven_rec_site + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(event_probabilities) then ("--event-probabilities " +  '"' + event_probabilities + '"') else ""} \
      ~{if defined(mutation_type_probabilities) then ("--mutation-type-probabilities " +  '"' + mutation_type_probabilities + '"') else ""} \
      ~{if defined(prob_heterozygous) then ("--prob-heterozygous " +  '"' + prob_heterozygous + '"') else ""} \
      ~{if defined(prob_incomplete_digestion) then ("--prob-incomplete-digestion " +  '"' + prob_incomplete_digestion + '"') else ""} \
      ~{if defined(rate_incomplete_digestion) then ("--rate-incomplete-digestion " +  '"' + rate_incomplete_digestion + '"') else ""} \
      ~{if defined(prob_pcr_copy) then ("--prob-pcr-copy " +  '"' + prob_pcr_copy + '"') else ""} \
      ~{if defined(hrl_pcr_copies) then ("--hrl-pcr-copies " +  '"' + hrl_pcr_copies + '"') else ""} \
      ~{if defined(singleton_pcr_copies) then ("--singleton-pcr-copies " +  '"' + singleton_pcr_copies + '"') else ""} \
      ~{if defined(prob_seq_error) then ("--prob-seq-error " +  '"' + prob_seq_error + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity of output. -v: Show progress of\\nsimulation. -vv: Print used parameters after\\nsimulation. -vvv: Show details for each simulated\\nlocus."
    zip: "Write output as gzipped fastq."
    get_barcodes: "Write copies of the default barcode files into the\\ncurrent folder."
    debug: "Set debug-friendly values for the data set, i.e. all\\nmutation events and mutation types are equally\\nprobable."
    name: "Name for the data set that will be used in the file\\nname. If none is given, the name 'RAGEdataset' will be\\nused."
    prefix_output_path: "Prefix of the output path. At this point a folder will\\nbe created that contains all output files created by\\nddRAGE."
    nr_individuals: "Number of individuals in the result. Default: 3"
    loci: "Number of loci for which reads will be created or path\\nto a FASTA file with predefined fragments. Default: 3"
    read_length: "Total sequence length of the reads (including\\noverhang, barcodes, etc.). The officially supported\\nand well tested range is 50-500bp but longer or\\nshorter reads are also possible. Default: 100"
    coverage: "Expected coverage that will be created by normal\\nduplication and mutations. The exact coverage value is\\ndetermined using a probabilistic process. Default: 30"
    hrl_number: "Number of Highly Repetitive Loci (HRLs) that will be\\nadded, given as fraction of total locus size. Example:\\n``-l 100 --hrl-number 0.1`` for 10 HRLs. Default: 0.05"
    no_singletons: "Disable generation of singleton reads."
    diversity: "Parameter for the number of genotypes created per\\nlocus. This will be used as parameter for a Poisson\\ndistribution. Default: 1.0, increase for more alleles/\\ngenotypes per locus."
    gc_content: "GC content of the generated sequences. Default: 0.5"
    quality_model: "Path to a quality model file (.qmodel.npz). A qmodel\\nfile contains a probability vector for each read\\nposition. For details, please refer to the\\ndocumentation."
    single_end: "Write a single-end dataset. Only writes a p5 FASTQ\\nfile. Default: False"
    overlap: "Overlap factor (between 0 and 1.0) of randomly\\ngenerated reads. Default 0"
    multiple_p_seven_barcodes: "Combine individuals with multiple p7 barcodes in one\\noutput file. Default: False"
    coverage_model: "Model to choose coverage values. Can be either\\n'poisson' or 'betabinomial'. The Betabinomial model is\\nthe default as it can be easily adapted to different\\ncoverage profiles using the --BBD-alpha and --BBD-beta\\nparameters."
    bbd_alpha: "Alpha parameter of the Beta-binomial distribution.\\nHigher values increase the left tailing of the\\ncoverage distribution, if the BBD model is used.\\nDefault: 6"
    bbd_beta: "Beta parameter of the Beta-binomial distribution.\\nHigher values increase the right tailing of the\\ncoverage distribution, if the BBD model is used.\\nDefault: 2"
    max_pcr_copies: "Maximum number of PCR copies that can be created for\\neach finalized (potentially mutated and multiplied)\\nread. Default: 3"
    hrl_max_coverage: "Maximum coverage for Highly Repetitive Loci (HRLs)\\n(per individual). The minimum coverage is determined\\nas mean + 2 standard deviations of the main coverage\\ngenerating function. Default: 1000"
    dbr: "Sequence of the degenerate base region (DBR) in IUPAC\\nambiguity code. Default: 'NNNNNNMMGGACG'. To not\\ninclude a DBR sequence use --dbr ''"
    p_five_overhang: "Sequence of the p5 overhang. Default: 'TGCAT'"
    p_seven_overhang: "Sequence of the p7 overhang. Default: 'TAC'"
    p_five_rec_site: "Sequence of the p5 recognition site. Default: 'ATGCAT'"
    p_seven_rec_site: "Sequence of the p7 recognition site. Default: 'GTCA'"
    barcodes: "Path to barcodes file or predefined barcode set like\\n'barcodes', 'small', 'full' or 'full'. Default:\\n'barcodes', a generic population. Take a look at the\\nrage/barcode_handler/barcodes folder for more\\ninformation."
    event_probabilities: "PROB_DROPOUT PROB_MUTATION\\nProbability profile for the distribution of event\\ntypes (common, dropout, mutation; in this order).\\nExample: ``python ddrage.py --event-probabilities 0.9\\n0.05 0.05`` -> common 90%, dropout 5%, mutation 5%\\n(Default). Each entry can be given as a float or a\\nstring of python code (see example above) which is\\nhelpful for small probability values."
    mutation_type_probabilities: "PROB_INSERTION PROB_DELETION PROB_P5_NA_ALTERNATIVE PROB_P7_NA_ALTERNATIVE PROB_P5_NA_DROPOUT PROB_P7_NA_DROPOUT\\nProbability profile for the distribution of mutation\\ntypes (snp, insertion, deletion, p5 na alternative, p7\\nna alternative, p5 na dropout, p7 na dropout; in this\\norder). Example: ``python ddrage.py --mutation-type-\\nprobabilities 0.8999 0.05 0.05 '0.0001*0.001'\\n'0.0001*0.05' '0.0001*0.899' '0.0001*0.05'`` -> snp\\n89.99%, insertion 5%, deletion 5%, p5 na alternative\\n0.00001% , p7 na alternative 0.0005%, p5 na dropout\\n0.00899%, p7 na dropout 0.0005% (Default). Each entry\\ncan be given as a float or a string of python code\\n(see example above) which is helpful for small\\nprobability values."
    prob_heterozygous: "Probability of mutations being heterozygous. Default:\\n0.5"
    prob_incomplete_digestion: "Probability of incomplete digestion for an individual\\nat a locus. Default: 0.1"
    rate_incomplete_digestion: "Expected fraction of reads that are being lost in the\\nevent of Incomplete Digestion. Default: 0.2"
    prob_pcr_copy: "Probability that a (potentially mutated and\\nmultiplied) read will receive PCR copies. This\\ninfluences the simulated PCR copy rate. Default: 0.2"
    hrl_pcr_copies: "Probability of PCR copies for HRL reads in relation to\\nnormal reads. Default: 0.9, i.e. the probability for a\\nPCR copy of a HRL read is prob_pcr_copy * hrl_pcr\\ncopies = 0.2 * 0.9 = 0.18"
    singleton_pcr_copies: "Probability of PCR copies for singleton reads in\\nrelation to normal reads. Default: 1/3, i.e. the\\nprobability for a PCR copy of a singleton read is\\nprob_pcr_copy * singleton_pcr_copies = 0.2 * (1/3) =\\n0.0666..."
    prob_seq_error: "Probability of sequencing substitution errors.\\nDefault: 0.01\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_path = "${in_prefix_output_path}"
    File out_multiple_p_seven_barcodes = "${in_multiple_p_seven_barcodes}"
  }
}
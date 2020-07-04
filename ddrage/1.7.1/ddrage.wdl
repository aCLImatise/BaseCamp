version 1.0

task Ddrage {
  input {
    Boolean? verbose
    Boolean? zip
    Boolean? get_barcodes
    Boolean? debug
    String? name
    String? prefix_output_path
    String? nr_individuals
    String? loci
    String? read_length
    String? coverage
    String? hrl_number
    Boolean? no_singletons
    String? diversity
    String? gc_content
    String? quality_model
    Boolean? single_end
    String? overlap
    Boolean? multiple_p_seven_barcodes
    String? coverage_model
    String? bbd_alpha
    String? bbd_beta
    Int? max_pcr_copies
    String? hrl_max_coverage
    String? dbr
    String? p_five_overhang
    String? p_seven_overhang
    String? p_five_rec_site
    String? p_seven_rec_site
    String? barcodes
    String? prob_heterozygous
    String? prob_incomplete_digestion
    String? rate_incomplete_digestion
    String? prob_pcr_copy
    String? hrl_pcr_copies
    String? singleton_pcr_copies
    String? prob_seq_error
  }
  command <<<
    ddrage \
      ~{true="--verbose" false="" verbose} \
      ~{true="--zip" false="" zip} \
      ~{true="--get-barcodes" false="" get_barcodes} \
      ~{true="--DEBUG" false="" debug} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(prefix_output_path) then ("--output " +  '"' + prefix_output_path + '"') else ""} \
      ~{if defined(nr_individuals) then ("--nr-individuals " +  '"' + nr_individuals + '"') else ""} \
      ~{if defined(loci) then ("--loci " +  '"' + loci + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(hrl_number) then ("--hrl-number " +  '"' + hrl_number + '"') else ""} \
      ~{true="--no-singletons" false="" no_singletons} \
      ~{if defined(diversity) then ("--diversity " +  '"' + diversity + '"') else ""} \
      ~{if defined(gc_content) then ("--gc-content " +  '"' + gc_content + '"') else ""} \
      ~{if defined(quality_model) then ("--quality-model " +  '"' + quality_model + '"') else ""} \
      ~{true="--single-end" false="" single_end} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{true="--multiple-p7-barcodes" false="" multiple_p_seven_barcodes} \
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
      ~{if defined(prob_heterozygous) then ("--prob-heterozygous " +  '"' + prob_heterozygous + '"') else ""} \
      ~{if defined(prob_incomplete_digestion) then ("--prob-incomplete-digestion " +  '"' + prob_incomplete_digestion + '"') else ""} \
      ~{if defined(rate_incomplete_digestion) then ("--rate-incomplete-digestion " +  '"' + rate_incomplete_digestion + '"') else ""} \
      ~{if defined(prob_pcr_copy) then ("--prob-pcr-copy " +  '"' + prob_pcr_copy + '"') else ""} \
      ~{if defined(hrl_pcr_copies) then ("--hrl-pcr-copies " +  '"' + hrl_pcr_copies + '"') else ""} \
      ~{if defined(singleton_pcr_copies) then ("--singleton-pcr-copies " +  '"' + singleton_pcr_copies + '"') else ""} \
      ~{if defined(prob_seq_error) then ("--prob-seq-error " +  '"' + prob_seq_error + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity of output. -v: Show progress of simulation. -vv: Print used parameters after simulation. -vvv: Show details for each simulated locus."
    zip: "Write output as gzipped fastq."
    get_barcodes: "Write copies of the default barcode files into the current folder."
    debug: "Set debug-friendly values for the data set, i.e. all mutation events and mutation types are equally probable."
    name: "Name for the data set that will be used in the file name. If none is given, the name 'RAGEdataset' will be used."
    prefix_output_path: "Prefix of the output path. At this point a folder will be created that contains all output files created by ddRAGE."
    nr_individuals: "Number of individuals in the result. Default: 3"
    loci: "Number of loci for which reads will be created or path to a FASTA file with predefined fragments. Default: 3"
    read_length: "Total sequence length of the reads (including overhang, barcodes, etc.). The officially supported and well tested range is 50-500bp but longer or shorter reads are also possible. Default: 100"
    coverage: "Expected coverage that will be created by normal duplication and mutations. The exact coverage value is determined using a probabilistic process. Default: 30"
    hrl_number: "Number of Highly Repetitive Loci (HRLs) that will be added, given as fraction of total locus size. Example: ``-l 100 --hrl-number 0.1`` for 10 HRLs. Default: 0.05"
    no_singletons: "Disable generation of singleton reads."
    diversity: "Parameter for the number of genotypes created per locus. This will be used as parameter for a Poisson distribution. Default: 1.0, increase for more alleles/ genotypes per locus."
    gc_content: "GC content of the generated sequences. Default: 0.5"
    quality_model: "Path to a quality model file (.qmodel.npz). A qmodel file contains a probability vector for each read position. For details, please refer to the documentation."
    single_end: "Write a single-end dataset. Only writes a p5 FASTQ file. Default: False"
    overlap: "Overlap factor (between 0 and 1.0) of randomly generated reads. Default 0"
    multiple_p_seven_barcodes: "Combine individuals with multiple p7 barcodes in one output file. Default: False"
    coverage_model: "Model to choose coverage values. Can be either 'poisson' or 'betabinomial'. The Betabinomial model is the default as it can be easily adapted to different coverage profiles using the --BBD-alpha and --BBD-beta parameters."
    bbd_alpha: "Alpha parameter of the Beta-binomial distribution. Higher values increase the left tailing of the coverage distribution, if the BBD model is used. Default: 6"
    bbd_beta: "Beta parameter of the Beta-binomial distribution. Higher values increase the right tailing of the coverage distribution, if the BBD model is used. Default: 2"
    max_pcr_copies: "Maximum number of PCR copies that can be created for each finalized (potentially mutated and multiplied) read. Default: 3"
    hrl_max_coverage: "Maximum coverage for Highly Repetitive Loci (HRLs) (per individual). The minimum coverage is determined as mean + 2 standard deviations of the main coverage generating function. Default: 1000"
    dbr: "Sequence of the degenerate base region (DBR) in IUPAC ambiguity code. Default: 'NNNNNNMMGGACG'. To not include a DBR sequence use --dbr ''"
    p_five_overhang: "Sequence of the p5 overhang. Default: 'TGCAT'"
    p_seven_overhang: "Sequence of the p7 overhang. Default: 'TAC'"
    p_five_rec_site: "Sequence of the p5 recognition site. Default: 'ATGCAT'"
    p_seven_rec_site: "Sequence of the p7 recognition site. Default: 'GTCA'"
    barcodes: "Path to barcodes file or predefined barcode set like 'barcodes', 'small', 'full' or 'full'. Default: 'barcodes', a generic population. Take a look at the rage/barcode_handler/barcodes folder for more information."
    prob_heterozygous: "Probability of mutations being heterozygous. Default: 0.5"
    prob_incomplete_digestion: "Probability of incomplete digestion for an individual at a locus. Default: 0.1"
    rate_incomplete_digestion: "Expected fraction of reads that are being lost in the event of Incomplete Digestion. Default: 0.2"
    prob_pcr_copy: "Probability that a (potentially mutated and multiplied) read will receive PCR copies. This influences the simulated PCR copy rate. Default: 0.2"
    hrl_pcr_copies: "Probability of PCR copies for HRL reads in relation to normal reads. Default: 0.9, i.e. the probability for a PCR copy of a HRL read is prob_pcr_copy * hrl_pcr copies = 0.2 * 0.9 = 0.18"
    singleton_pcr_copies: "Probability of PCR copies for singleton reads in relation to normal reads. Default: 1/3, i.e. the probability for a PCR copy of a singleton read is prob_pcr_copy * singleton_pcr_copies = 0.2 * (1/3) = 0.0666..."
    prob_seq_error: "Probability of sequencing substitution errors. Default: 0.01"
  }
}
version 1.0

task GtftkOlogram {
  input {
    Boolean? more_bed
    Boolean? input_file
    Boolean? chrom_info
    Boolean? peak_file
    Boolean? more_bed_labels
    Boolean? bed_excl
    Boolean? bed_incl
    Boolean? upstream
    Boolean? downstream
    Boolean? more_keys
    Boolean? no_basic_feature
    Boolean? nb_threads
    Boolean? seed
    Boolean? mini_batch_nb
    Boolean? mini_batch_size
    Boolean? use_markov
    Directory? output_dir
    File? pdf_width
    File? pdf_height
    Boolean? pdf_file_alt
    Boolean? no_pdf
    Boolean? display_fit_quality
    File? tsv_file_path
    Boolean? sort_features
    Boolean? no_gtf
    Boolean? force_chrom_gtf
    Boolean? force_chrom_peak
    Boolean? force_chrom_more_bed
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    String the
    String regions_dot
    Int arguments
  }
  command <<<
    gtftk ologram \
      ~{the} \
      ~{regions_dot} \
      ~{arguments} \
      ~{if (more_bed) then "--more-bed" else ""} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (chrom_info) then "--chrom-info" else ""} \
      ~{if (peak_file) then "--peak-file" else ""} \
      ~{if (more_bed_labels) then "--more-bed-labels" else ""} \
      ~{if (bed_excl) then "--bed-excl" else ""} \
      ~{if (bed_incl) then "--bed-incl" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (more_keys) then "--more-keys" else ""} \
      ~{if (no_basic_feature) then "--no-basic-feature" else ""} \
      ~{if (nb_threads) then "--nb-threads" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (mini_batch_nb) then "--minibatch-nb" else ""} \
      ~{if (mini_batch_size) then "--minibatch-size" else ""} \
      ~{if (use_markov) then "--use-markov" else ""} \
      ~{if (output_dir) then "--outputdir" else ""} \
      ~{if (pdf_width) then "--pdf-width" else ""} \
      ~{if (pdf_height) then "--pdf-height" else ""} \
      ~{if (pdf_file_alt) then "--pdf-file-alt" else ""} \
      ~{if (no_pdf) then "--no-pdf" else ""} \
      ~{if (display_fit_quality) then "--display-fit-quality" else ""} \
      ~{if (tsv_file_path) then "--tsv-file-path" else ""} \
      ~{if (sort_features) then "--sort-features" else ""} \
      ~{if (no_gtf) then "--no-gtf" else ""} \
      ~{if (force_chrom_gtf) then "--force-chrom-gtf" else ""} \
      ~{if (force_chrom_peak) then "--force-chrom-peak" else ""} \
      ~{if (force_chrom_more_bed) then "--force-chrom-more-bed" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    more_bed: "A list of bed files to be considered as additional genomic annotations. (default: None)"
    input_file: "Path to the GTF file. Defaults to STDIN (default: <stdin>)"
    chrom_info: "Tabulated two-columns file. Chromosomes as column 1, sizes as column 2 (default: None)"
    peak_file: "The file containing the peaks/regions to be annotated. (bed format). (default: None)"
    more_bed_labels: "A comma separated list of labels (see --more-bed) (default: None)"
    bed_excl: "Exclusion file. The chromosomes will be shortened by this much for the shuffles of peaks and features. (bed format). (default: None)"
    bed_incl: "Opposite of --bed-excl, will perform the same operation but keep only those regions. (default: None)"
    upstream: "Extend the TSS and TTS of in 5' by a given value. (default: 1000)"
    downstream: "Extend the TSS and TTS of in 3' by a given value. (default: 1000)"
    more_keys: "A comma separated list of key used for labeling the genome. See Notes. (default: None)"
    no_basic_feature: "No statistics for basic features of GTF. Concentrates on --more-bed and --more-keys. (default: False)"
    nb_threads: "Number of threads for multiprocessing. (default: 1)"
    seed: "Numpy random seed. (default: 42)"
    mini_batch_nb: "Number of minibatches of shuffles. (default: 10)"
    mini_batch_size: "Size of each minibatch, in number of shuffles. (default: 20)"
    use_markov: "Whether to use Markov model realisations (order 2) instead of independant shuffles. See notes. (default: False)"
    output_dir: "Output directory name. (default: ologram_output)"
    pdf_width: "Output pdf file width (inches). (default: None)"
    pdf_height: "Output pdf file height (inches). (default: None)"
    pdf_file_alt: "Provide an alternative path for the main image. (default: None)"
    no_pdf: "Do not produce any image file. (default: False)"
    display_fit_quality: "Display the negative binomial fit quality on the diagrams. (default: False)"
    tsv_file_path: "Provide an alternative path for text output file. (default: None)"
    sort_features: "Whether to sort features in diagrams according to a computed statistic. (default: None)"
    no_gtf: "No GTF file is provided as input. (default: False)"
    force_chrom_gtf: "Discard silently, from GTF, genes outside chromosomes defined in --chrom-info. (default: False)"
    force_chrom_peak: "Discard silently, from --peak-file, peaks outside chromosomes defined in --chrom-info. (default: False)"
    force_chrom_more_bed: "Discard silently, from --more-bed files, regions outside chromosomes defined in --chrom-info. (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    the: "regions of the query (--peak-file) are located independently of the  reference (--inputfile or"
    regions_dot: "*  You can exclude regions from the shuffling. This is done by shuffling across a concatenated"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_pdf_width = "${in_pdf_width}"
    File out_pdf_height = "${in_pdf_height}"
    File out_tsv_file_path = "${in_tsv_file_path}"
    File out_no_date = "${in_no_date}"
  }
}
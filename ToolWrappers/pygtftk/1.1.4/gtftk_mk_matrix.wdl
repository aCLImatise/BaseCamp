version 1.0

task GtftkMkMatrix {
  input {
    Boolean? input_file
    Boolean? bigwig_list
    File? output_file
    Boolean? labels
    Boolean? ft_type
    Boolean? pseudo_count
    Boolean? upstream
    Boolean? downstream
    Boolean? chrom_info
    Boolean? bin_nb
    Boolean? nb_proc
    Boolean? bin_around_frac
    Boolean? zero_to_na
    Boolean? no_stranded
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int arguments
  }
  command <<<
    gtftk mk_matrix \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (bigwig_list) then "--bigwiglist" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (ft_type) then "--ft-type" else ""} \
      ~{if (pseudo_count) then "--pseudo-count" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (chrom_info) then "--chrom-info" else ""} \
      ~{if (bin_nb) then "--bin-nb" else ""} \
      ~{if (nb_proc) then "--nb-proc" else ""} \
      ~{if (bin_around_frac) then "--bin-around-frac" else ""} \
      ~{if (zero_to_na) then "--zero-to-na" else ""} \
      ~{if (no_stranded) then "--no-stranded" else ""} \
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
    input_file: "A GTF file or bed file. A GTF if <stdin>. (default: <stdin>)"
    bigwig_list: "A list of Bigwig files (last argument). (default: None)"
    output_file: "Output file name (.zip extension will be added). (default: <stdout>)"
    labels: "Bigwig labels (i.e short name version for plotting). (default: None)"
    ft_type: "If input is a GTF, the region to analyse. (default: promoter)"
    pseudo_count: "Pseudo-count to add to all values. (default: 0)"
    upstream: "Extend the region of interest in 5' by a given value. (default: 1000)"
    downstream: "Extend the region of interest in 3' by a given value. (default: 1000)"
    chrom_info: "Tabulated file (chr as column 1, sizes as column 2.) (default: None)"
    bin_nb: "Split the region into w bins. (default: 100)"
    nb_proc: "Use this many threads to compute coverage. (default: 1)"
    bin_around_frac: "Fraction of bins used in 5' and 3' regions. (default: 0.1)"
    zero_to_na: "Use NA not zero when region is undefined in bigwig. (default: False)"
    no_stranded: "The bins should not be oriented relative to strand. (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}
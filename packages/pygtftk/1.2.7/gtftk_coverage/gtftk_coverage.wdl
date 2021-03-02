version 1.0

task GtftkCoverage {
  input {
    Boolean? input_file
    File? output_file
    Boolean? chrom_info
    Boolean? upstream
    Boolean? downstream
    Boolean? nb_window
    Boolean? nb_proc
    Boolean? ft_type
    Boolean? labels
    Boolean? name_column
    Boolean? pseudo_count
    Boolean? n_highest
    Boolean? matrix_out
    Boolean? zero_to_na
    Boolean? key_name
    Boolean? stat
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int arguments
    String bw_list
  }
  command <<<
    gtftk coverage \
      ~{arguments} \
      ~{bw_list} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (chrom_info) then "--chrom-info" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (nb_window) then "--nb-window" else ""} \
      ~{if (nb_proc) then "--nb-proc" else ""} \
      ~{if (ft_type) then "--ft-type" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (name_column) then "--name-column" else ""} \
      ~{if (pseudo_count) then "--pseudo-count" else ""} \
      ~{if (n_highest) then "--n-highest" else ""} \
      ~{if (matrix_out) then "--matrix-out" else ""} \
      ~{if (zero_to_na) then "--zero-to-na" else ""} \
      ~{if (key_name) then "--key-name" else ""} \
      ~{if (stat) then "--stat" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1"
  }
  parameter_meta {
    input_file: "The input GTF/BED file. Only GTF file if <stdin> is used. (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    chrom_info: "Tabulated two-columns file. Chromosomes as column 1 and sizes as column 2 (default: None)"
    upstream: "Extend the regions in 5' by a given value (int). (default: 0)"
    downstream: "Extend the regions in 3' by a given value (int). (default: 0)"
    nb_window: "Split the region into w bins (see -n). (default: 1)"
    nb_proc: "Use this many threads to compute coverage. (default: 1)"
    ft_type: "Region in which coverage is to be computed (promoter, intron, intergenic, tts or any feature defined in the column 3 of the GTF). (default: promoter)"
    labels: "Bigwig labels. (default: None)"
    name_column: "Use this ids to compute the name (4th column in bed output). (default: transcript_id)"
    pseudo_count: "A pseudo-count to add in case count is equal to 0. (default: 1)"
    n_highest: "For each bigwig, use the n windows with higher values to compute coverage. (default: None)"
    matrix_out: "Matrix output format. Bigwigs as column names and features as rows. (default: False)"
    zero_to_na: "Use NA not zero when region is undefined in bigwig or below window size. (default: False)"
    key_name: "If gtf format is requested, the name of the key. (default: cov)"
    stat: "The statistics to be computed for each region. (default: mean)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    arguments: "Arguments:"
    bw_list: "A list of Bigwig file (last argument)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}
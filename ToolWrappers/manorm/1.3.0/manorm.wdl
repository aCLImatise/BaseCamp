version 1.0

task Manorm {
  input {
    Boolean? verbose
    File? peak_one
    File? peak_two
    Int? peak_format
    File? read_one
    File? read_two
    String? read_format
    Int? name_one
    Int? name_two
    Int? shift_size_one
    Int? shift_size_two
    Boolean? paired_end
    Int? window_size
    Int? summit_dis
    Int? n_random
    Float? m_cut_off
    Float? p_cut_off
    Directory? output_dir
    Boolean? write_all
    Boolean? v
  }
  command <<<
    manorm \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(peak_one) then ("--peak1 " +  '"' + peak_one + '"') else ""} \
      ~{if defined(peak_two) then ("--peak2 " +  '"' + peak_two + '"') else ""} \
      ~{if defined(peak_format) then ("--peak-format " +  '"' + peak_format + '"') else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(read_format) then ("--read-format " +  '"' + read_format + '"') else ""} \
      ~{if defined(name_one) then ("--name1 " +  '"' + name_one + '"') else ""} \
      ~{if defined(name_two) then ("--name2 " +  '"' + name_two + '"') else ""} \
      ~{if defined(shift_size_one) then ("--shiftsize1 " +  '"' + shift_size_one + '"') else ""} \
      ~{if defined(shift_size_two) then ("--shiftsize2 " +  '"' + shift_size_two + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(summit_dis) then ("--summit-dis " +  '"' + summit_dis + '"') else ""} \
      ~{if defined(n_random) then ("--n-random " +  '"' + n_random + '"') else ""} \
      ~{if defined(m_cut_off) then ("--m-cutoff " +  '"' + m_cut_off + '"') else ""} \
      ~{if defined(p_cut_off) then ("--p-cutoff " +  '"' + p_cut_off + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (write_all) then "--write-all" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    verbose: "Enable verbose log messages."
    peak_one: "Peak file of sample 1."
    peak_two: "Peak file of sample 2."
    peak_format: "Format of the peak files. Support ['bed',\\n'bed3-summit', 'macs', 'macs2', 'narrowpeak',\\n'broadpeak']. Default: bed"
    read_one: "Read file of sample 1."
    read_two: "Read file of sample 2."
    read_format: "Format of the read files. Support ['bed', 'bedpe',\\n'sam', 'bam']. Default: bed"
    name_one: "Name of sample 1. If not specified, the peak file name\\nwill be used."
    name_two: "Name of sample 2. If not specified, the peak file name\\nwill be used."
    shift_size_one: "Single-end reads shift size for sample 1. Reads are\\nshifted by `N` bp towards 3' direction and the 5' end\\nof each shifted read is used to represent the genomic\\nlocus of the DNA fragment. Set to 0.5 * fragment size\\nof the ChIP-seq library. Default: 100"
    shift_size_two: "Single-end reads shift size for sample 2. Default: 100"
    paired_end: "Paired-end mode. The middle point of each read pair is\\nused to represent the genomic locus of the DNA\\nfragment. If specified, `--s1` and `--s2` will be\\nignored."
    window_size: "Window size to count reads and calculate read\\ndensities. Set to 2000 is recommended for sharp\\nhistone marks like H3K4me3 or H3K27ac and 1000 for TFs\\nor DNase-seq. Default: 2000"
    summit_dis: "Summit-to-summit distance cutoff for overlapping\\ncommon peaks. Common peaks with summit distance beyond\\nthe cutoff are excluded in model fitting. Default:\\n`window size` / 4"
    n_random: "Number of random simulations to test the enrichment of\\npeak overlap between the specified samples. Set to 0\\nto disable the testing. Default: 10"
    m_cut_off: "Absolute M-value (log2-ratio) cutoff to define the\\nbiased (differential binding) peaks. Default: 1.0"
    p_cut_off: "P-value cutoff to define the biased peaks. Default:\\n0.01"
    output_dir: "Output directory. Default: Current working directory"
    write_all: "Write two extra output files containing the results of\\nthe original (unmerged) peaks."
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
version 1.0

task Manorm {
  input {
    Boolean? verbose
    File? peak_one
    File? peak_two
    String? peak_format
    File? read_one
    File? read_two
    String? read_format
    String? name_one
    String? name_two
    String? shift_size_one
    String? shift_size_two
    Boolean? paired_end
    Int? window_size
    String? summit_dis
    String? n_random
    Float? m_cut_off
    Float? p_cut_off
    String? output_dir
    Boolean? write_all
    Boolean? v
  }
  command <<<
    manorm \
      ~{true="--verbose" false="" verbose} \
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
      ~{true="--paired-end" false="" paired_end} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(summit_dis) then ("--summit-dis " +  '"' + summit_dis + '"') else ""} \
      ~{if defined(n_random) then ("--n-random " +  '"' + n_random + '"') else ""} \
      ~{if defined(m_cut_off) then ("--m-cutoff " +  '"' + m_cut_off + '"') else ""} \
      ~{if defined(p_cut_off) then ("--p-cutoff " +  '"' + p_cut_off + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--write-all" false="" write_all} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    verbose: "Enable verbose log messages."
    peak_one: "Peak file of sample 1."
    peak_two: "Peak file of sample 2."
    peak_format: "Format of the peak files. Support ['bed', 'bed3-summit', 'macs', 'macs2', 'narrowpeak', 'broadpeak']. Default: bed"
    read_one: "Read file of sample 1."
    read_two: "Read file of sample 2."
    read_format: "Format of the read files. Support ['bed', 'bedpe', 'sam', 'bam']. Default: bed"
    name_one: "Name of sample 1. If not specified, the peak file name will be used."
    name_two: "Name of sample 2. If not specified, the peak file name will be used."
    shift_size_one: "Single-end reads shift size for sample 1. Reads are shifted by `N` bp towards 3' direction and the 5' end of each shifted read is used to represent the genomic locus of the DNA fragment. Set to 0.5 * fragment size of the ChIP-seq library. Default: 100"
    shift_size_two: "Single-end reads shift size for sample 2. Default: 100"
    paired_end: "Paired-end mode. The middle point of each read pair is used to represent the genomic locus of the DNA fragment. If specified, `--s1` and `--s2` will be ignored."
    window_size: "Window size to count reads and calculate read densities. Set to 2000 is recommended for sharp histone marks like H3K4me3 or H3K27ac and 1000 for TFs or DNase-seq. Default: 2000"
    summit_dis: "Summit-to-summit distance cutoff for overlapping common peaks. Common peaks with summit distance beyond the cutoff are excluded in model fitting. Default: `window size` / 4"
    n_random: "Number of random simulations to test the enrichment of peak overlap between the specified samples. Set to 0 to disable the testing. Default: 10"
    m_cut_off: "Absolute M-value (log2-ratio) cutoff to define the biased (differential binding) peaks. Default: 1.0"
    p_cut_off: "P-value cutoff to define the biased peaks. Default: 0.01"
    output_dir: "Output directory. Default: Current working directory"
    write_all: "Write two extra output files containing the results of the original (unmerged) peaks."
    v: ""
  }
}
version 1.0

task PrepPoisGAM {
  input {
    File? two_column_read
    Int? fragment_size_estimated
    Int? _length_default
    String? specified_use_output
    File? file_stores_estimates
    Int? bin_size_default
    String? chrom
    Int? uds
    Boolean? no_gap_in_read
    Boolean? gc_bin
    Boolean? map_bin
    Boolean? none_gb_inom
    Boolean? noheader
    File? refine
    File fa_file
  }
  command <<<
    PrepPoisGAM \
      ~{fa_file} \
      ~{if defined(two_column_read) then ("-i " +  '"' + two_column_read + '"') else ""} \
      ~{if defined(fragment_size_estimated) then ("-s " +  '"' + fragment_size_estimated + '"') else ""} \
      ~{if defined(_length_default) then ("-l " +  '"' + _length_default + '"') else ""} \
      ~{if defined(specified_use_output) then ("-o " +  '"' + specified_use_output + '"') else ""} \
      ~{if defined(file_stores_estimates) then ("-e " +  '"' + file_stores_estimates + '"') else ""} \
      ~{if defined(bin_size_default) then ("-b " +  '"' + bin_size_default + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(uds) then ("--uds " +  '"' + uds + '"') else ""} \
      ~{if (no_gap_in_read) then "--noGapInRead" else ""} \
      ~{if (gc_bin) then "--gc_bin" else ""} \
      ~{if (map_bin) then "--map_bin" else ""} \
      ~{if (none_gb_inom) then "--NoNegBinom" else ""} \
      ~{if (noheader) then "--NoHeader" else ""} \
      ~{if defined(refine) then ("--refine " +  '"' + refine + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    two_column_read: ": a two column read count file(position and count); If unspecified, use <stdin> as input;\\nData should be ordered by position"
    fragment_size_estimated: ": fragment size as estimated from paired end data or by cross correlation of reads on postive and negative strands; Default 300"
    _length_default: ": read length; Default 50"
    specified_use_output: ": if specified, use this as output"
    file_stores_estimates: ": the file that stores the estimates of the glm model"
    bin_size_default: ": the bin size; default 100; only valid if -e is specified"
    chrom: ": the chromosome under consideration"
    uds: ": the number base pairs to extend to upstream and downstream. Default 5."
    no_gap_in_read: ": when use every nucleotide in the extended read instead of just the nucleotides on two ends"
    gc_bin: ": bin the data and report gc and read count in the bins; Notice that if the option -e is specified, this option will be ignored"
    map_bin: ": if specified, bin the data as bins with equal number of uniquely mappable genomic locations\\nonly valid if --gc_bin is specified and this option assume the input file has all unique mappable positions of the chromosome under consideration"
    none_gb_inom: ": Do not use negative binomial to estimate the variance;\\nIf this is not specified, the last row of -e <string> will be used as estimate of theta parameter in the Negative Binomial model"
    noheader: ": Do not print header to the output"
    refine: ": the file that stores the parameters in the refine step"
    fa_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
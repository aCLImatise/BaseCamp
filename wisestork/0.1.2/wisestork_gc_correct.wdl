version 1.0

task WisestorkGcCorrect {
  input {
    Int? binsize
    File? reference
    File? bin_file
    File? path_output_file
    File? path_input_file
    Float? frac_n
    Float? frac_r
    Int? iter
    Float? frac_lowess
  }
  command <<<
    wisestork gc-correct \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bin_file) then ("--bin-file " +  '"' + bin_file + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(frac_n) then ("--frac-n " +  '"' + frac_n + '"') else ""} \
      ~{if defined(frac_r) then ("--frac-r " +  '"' + frac_r + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{if defined(frac_lowess) then ("--frac-lowess " +  '"' + frac_lowess + '"') else ""}
  >>>
  parameter_meta {
    binsize: "RANGE  Bin size to use. Default = 50000"
    reference: "Path to reference fasta  [required]"
    bin_file: "Optional path to region BED file"
    path_output_file: "Path to output BED file  [required]"
    path_input_file: "Path to input BED file  [required]"
    frac_n: "Maximum fraction of N-bases per bin. Default = 0.1"
    frac_r: "Minimum fraction of reads per bin. Default = 0.0001"
    iter: "Number of iterations for LOWESS function. Default = 3"
    frac_lowess: "Fraction of data to use for LOWESS function. Default = 0.1"
  }
}
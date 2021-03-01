version 1.0

task WisestorkGccorrect {
  input {
    Int? binsize
    File? reference
    File? bin_file
    File? path_output_bed
    File? path_input_bed
    Float? frac_n
    Float? frac_lowess
    Float zero_dot_one
    Float zero_dot_zero_zero_zero_one
  }
  command <<<
    wisestork gc_correct \
      ~{zero_dot_one} \
      ~{zero_dot_zero_zero_zero_one} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bin_file) then ("--bin-file " +  '"' + bin_file + '"') else ""} \
      ~{if defined(path_output_bed) then ("--output " +  '"' + path_output_bed + '"') else ""} \
      ~{if defined(path_input_bed) then ("--input " +  '"' + path_input_bed + '"') else ""} \
      ~{if defined(frac_n) then ("--frac-n " +  '"' + frac_n + '"') else ""} \
      ~{if defined(frac_lowess) then ("--frac-lowess " +  '"' + frac_lowess + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    binsize: "RANGE  Bin size to use. Default = 50000"
    reference: "Path to reference fasta  [required]"
    bin_file: "Optional path to region BED file"
    path_output_bed: "Path to output BED file  [required]"
    path_input_bed: "Path to input BED file  [required]"
    frac_n: "Maximum fraction of N-bases per bin. Default ="
    frac_lowess: "Fraction of data to use for LOWESS function.\\nDefault = 0.1"
    zero_dot_one: "-r, --frac-r FLOAT           Minimum fraction of reads per bin. Default ="
    zero_dot_zero_zero_zero_one: "-t, --iter INTEGER           Number of iterations for LOWESS function."
  }
  output {
    File out_stdout = stdout()
    File out_path_output_bed = "${in_path_output_bed}"
  }
}
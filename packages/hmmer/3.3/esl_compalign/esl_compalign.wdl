version 1.0

task Eslcompalign {
  input {
    Boolean? print_column_statistics
    Boolean? print_stats_accuracy
    Int? p_mask
    Int? c_two_d_file
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? options
  }
  command <<<
    esl_compalign \
      ~{if (print_column_statistics) then "-c" else ""} \
      ~{if (print_stats_accuracy) then "-p" else ""} \
      ~{if defined(p_mask) then ("--p-mask " +  '"' + p_mask + '"') else ""} \
      ~{if defined(c_two_d_file) then ("--c2dfile " +  '"' + c_two_d_file + '"') else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    print_column_statistics: ": print per column statistics instead of per sequence stats"
    print_stats_accuracy: ": print stats on accuracy versus posterior probability (PP)"
    p_mask: ": with -p, only consider columns within mask ('1' columns) in <f>"
    c_two_d_file: ": print per column stats to esl-ssdraw --dfile file <f>"
    amino: ": <msafile> contains protein alignments"
    dna: ": <msafile> contains DNA alignments"
    rna: ": <msafile> contains RNA alignments"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
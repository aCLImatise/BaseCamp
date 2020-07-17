version 1.0

task EslCompalign {
  input {
    Boolean? print_column_statistics
    Boolean? print_stats_pp
    String? p_mask
    String? c_two_d_file
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? options
  }
  command <<<
    esl-compalign \
      ~{true="-c" false="" print_column_statistics} \
      ~{true="-p" false="" print_stats_pp} \
      ~{if defined(p_mask) then ("--p-mask " +  '"' + p_mask + '"') else ""} \
      ~{if defined(c_two_d_file) then ("--c2dfile " +  '"' + c_two_d_file + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    print_column_statistics: ": print per column statistics instead of per sequence stats"
    print_stats_pp: ": print stats on accuracy versus posterior probability (PP)"
    p_mask: ": with -p, only consider columns within mask ('1' columns) in <f>"
    c_two_d_file: ": print per column stats to esl-ssdraw --dfile file <f>"
    amino: ": <msafile> contains protein alignments"
    dna: ": <msafile> contains DNA alignments"
    rna: ": <msafile> contains RNA alignments"
    options: ""
  }
}
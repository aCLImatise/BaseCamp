version 1.0

task FinalFusion {
  input {
    Boolean? library_file
    Boolean? prefix_input_files
    Boolean? threads
    Boolean? d
    Boolean? kmer
    Boolean? input_contig_filecant
    Boolean? m
    Boolean? b
    Boolean? weight_threshold_outputting
    Boolean? o
    Boolean? var_10
    Boolean? threshold_minimum_k
    Boolean? overlap_percent_threshold_subgraphdefault
    Boolean? overlap_percent_threshold_pedefault
    Boolean? overlap_length_threshold
  }
  command <<<
    finalFusion \
      ~{if (library_file) then "-s" else ""} \
      ~{if (prefix_input_files) then "-g" else ""} \
      ~{if (threads) then "-p" else ""} \
      ~{if (d) then "-D" else ""} \
      ~{if (kmer) then "-K" else ""} \
      ~{if (input_contig_filecant) then "-c" else ""} \
      ~{if (m) then "-M" else ""} \
      ~{if (b) then "-B" else ""} \
      ~{if (weight_threshold_outputting) then "-u" else ""} \
      ~{if (o) then "-O" else ""} \
      ~{if (var_10) then "-S" else ""} \
      ~{if (threshold_minimum_k) then "-L" else ""} \
      ~{if (overlap_percent_threshold_subgraphdefault) then "-P" else ""} \
      ~{if (overlap_percent_threshold_pedefault) then "-t" else ""} \
      ~{if (overlap_length_threshold) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    library_file: "Library file."
    prefix_input_files: "Prefix of input files."
    threads: "Threads."
    d: "Enable this mode."
    kmer: "Kmer."
    input_contig_filecant: "Input contig file.(can't be name prefix.contig)"
    m: "Enable this mode."
    b: "Enable this mode."
    weight_threshold_outputting: "Weight threshold for outputting bundle file.(default 3)"
    o: "Enable this mode."
    var_10: "Enable this mode."
    threshold_minimum_k: "threshold for minimum length of contig(default K+2)."
    overlap_percent_threshold_subgraphdefault: "Overlap percent threshold for a subgraph(default 0.075)."
    overlap_percent_threshold_pedefault: "Overlap percent threshold for a PE(default 0.2)."
    overlap_length_threshold: "Overlap length threshold for remove transitive connect(default 20)."
  }
  output {
    File out_stdout = stdout()
  }
}
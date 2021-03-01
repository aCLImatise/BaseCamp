version 1.0

task Exonpairs {
  input {
    Int? min_intron
    Int? max_intron
    Int? ein_it_length
    Int? eterm_length
    Int? exon_length
    Float? intron_score
    Float? ein_it_score
    Float? eterm_score
    Float? exon_score
    Float? pair_score
    Int? flank_length
    Boolean? lc_mask
    File hmm_file
    File fast_a_file
  }
  command <<<
    exonpairs \
      ~{hmm_file} \
      ~{fast_a_file} \
      ~{if defined(min_intron) then ("-min-intron " +  '"' + min_intron + '"') else ""} \
      ~{if defined(max_intron) then ("-max-intron " +  '"' + max_intron + '"') else ""} \
      ~{if defined(ein_it_length) then ("-einit-length " +  '"' + ein_it_length + '"') else ""} \
      ~{if defined(eterm_length) then ("-eterm-length " +  '"' + eterm_length + '"') else ""} \
      ~{if defined(exon_length) then ("-exon-length " +  '"' + exon_length + '"') else ""} \
      ~{if defined(intron_score) then ("-intron-score " +  '"' + intron_score + '"') else ""} \
      ~{if defined(ein_it_score) then ("-einit-score " +  '"' + ein_it_score + '"') else ""} \
      ~{if defined(eterm_score) then ("-eterm-score " +  '"' + eterm_score + '"') else ""} \
      ~{if defined(exon_score) then ("-exon-score " +  '"' + exon_score + '"') else ""} \
      ~{if defined(pair_score) then ("-pair-score " +  '"' + pair_score + '"') else ""} \
      ~{if defined(flank_length) then ("-flank-length " +  '"' + flank_length + '"') else ""} \
      ~{if (lc_mask) then "-lcmask" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_intron: "minimum Intron length [30]"
    max_intron: "maximum Intron length [10000]"
    ein_it_length: "minimum Einit length in bp [10]"
    eterm_length: "minimum Eterm length in bp [10]"
    exon_length: "minimum Exon length in bp [30]"
    intron_score: "minimum Intron score in bits [-5]"
    ein_it_score: "minimum Einit score in bits [-5]"
    eterm_score: "minimum Eterm score in bits [-5]"
    exon_score: "minimum Exon score in bits [-5]"
    pair_score: "minimum pair score (exon-intron-exon) [10]"
    flank_length: "length of flanking sequence per exon [20]"
    lc_mask: "treat lowercase as N"
    hmm_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
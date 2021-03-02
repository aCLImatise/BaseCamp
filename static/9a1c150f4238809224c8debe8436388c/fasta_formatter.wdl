version 1.0

task FastaFormatter {
  input {
    Boolean? e
    Boolean? t
    String? w
    String? o
    File? i
    String aaaa_ag_gggg
    String agc_tn
    String a_aaaagggggccccctttttagctn
    String aaaa_agg
    String tccc_cca
    String my_id
    String aaa_ggg_ttt_ccc
    String aagtagtagtagtagt
  }
  command <<<
    fasta_formatter \
      ~{aaaa_ag_gggg} \
      ~{agc_tn} \
      ~{a_aaaagggggccccctttttagctn} \
      ~{aaaa_agg} \
      ~{tccc_cca} \
      ~{my_id} \
      ~{aaa_ggg_ttt_ccc} \
      ~{aagtagtagtagtagt} \
      ~{if (e) then "-e" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    e: ""
    t: ""
    w: ""
    o: ""
    i: ""
    aaaa_ag_gggg: "CCCCCTTTTT"
    agc_tn: "Output example with unlimited line width [-w 0]:"
    a_aaaagggggccccctttttagctn: "Output example with max. line width=7 [-w 7]:"
    aaaa_agg: "GGGTTTT"
    tccc_cca: "GCTN"
    my_id: "AAAAAGGGGGCCCCCTTTTAGCTN"
    aaa_ggg_ttt_ccc: ">EMPTY-SEQUENCE"
    aagtagtagtagtagt: "GTATTTTATAT"
  }
  output {
    File out_stdout = stdout()
  }
}
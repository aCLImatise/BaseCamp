version 1.0

task BpSearch2alnblockspl {
  input {
    Boolean? max_evalue
    Boolean? mine_value
    Boolean? min_len
    Boolean? max_id
    Boolean? mini_d
    Boolean? i_slash_input
    File? oslash_output
    Boolean? f_slash_format
    String? of_slash_out_format
    Boolean? v_slash_verbose
  }
  command <<<
    bp_search2alnblocks_pl \
      ~{if (max_evalue) then "--maxevalue" else ""} \
      ~{if (mine_value) then "--minevalue" else ""} \
      ~{if (min_len) then "--minlen" else ""} \
      ~{if (max_id) then "--maxid" else ""} \
      ~{if (mini_d) then "--minid" else ""} \
      ~{if (i_slash_input) then "-i/--input" else ""} \
      ~{if (oslash_output) then "-o/--output" else ""} \
      ~{if (f_slash_format) then "-f/--format" else ""} \
      ~{if defined(of_slash_out_format) then ("-of/--outformat " +  '"' + of_slash_out_format + '"') else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""}
  >>>
  parameter_meta {
    max_evalue: "Maximum E-value for an HSP"
    mine_value: "Minimum E-value for an HSP"
    min_len: "Minimum length of an HSP [default 0]"
    max_id: "Maximum Percent Id [default 100]\\n(to help remove sequences which are really close)"
    mini_d: "Minimum Percent Identity for an HSP [default 0]"
    i_slash_input: "An optional input filename (expects input on STDIN by default)"
    oslash_output: "An optional output filename (exports to STDOUT by default)"
    f_slash_format: "Specify a different Search Alignment format-\\n{fasta, axt, waba, blast, blastxml} are all permitted\\nalthough the format must have actual alignment\\nsequence for this script to work\\nSee L<Bio::SearchIO> for more information."
    of_slash_out_format: "format for the alignment blocks, anything\\nL<Bio::AlignIO> supports."
    v_slash_verbose: "Turn on debugging"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_output = "${in_oslash_output}"
  }
}
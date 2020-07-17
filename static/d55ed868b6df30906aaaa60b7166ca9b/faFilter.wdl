version 1.0

task FaFilter {
  input {
    String? name
    File? name_pat_list
    Boolean? invert_match_select
    String? minsize
    String? maxsize
    String? max_n
    Boolean? uniq
    Boolean? make_case_count
    String in_dot_fa
    String out_dot_fa
  }
  command <<<
    faFilter \
      ~{in_dot_fa} \
      ~{out_dot_fa} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(name_pat_list) then ("-namePatList " +  '"' + name_pat_list + '"') else ""} \
      ~{true="-v" false="" invert_match_select} \
      ~{if defined(minsize) then ("-minSize " +  '"' + minsize + '"') else ""} \
      ~{if defined(maxsize) then ("-maxSize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(max_n) then ("-maxN " +  '"' + max_n + '"') else ""} \
      ~{true="-uniq" false="" uniq} \
      ~{true="-i" false="" make_case_count}
  >>>
  parameter_meta {
    name: "- Only pass records where name matches wildcard * matches any string or no character. ? matches any single character. anything else etc must match the character exactly (these will will need to be quoted for the shell)"
    name_pat_list: "- A list of regular expressions, one per line, that will be applied to the fasta name the same as -name"
    invert_match_select: "- invert match, select non-matching records."
    minsize: "- Only pass sequences at least this big."
    maxsize: "- Only pass sequences this size or smaller."
    max_n: "Only pass sequences with fewer than this number of N's"
    uniq: "- Removes duplicate sequence ids, keeping the first."
    make_case_count: "- make -uniq ignore case so sequence IDs ABC and abc count as dupes."
    in_dot_fa: ""
    out_dot_fa: ""
  }
}
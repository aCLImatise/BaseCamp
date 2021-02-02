version 1.0

task FaFilter {
  input {
    String? name
    File? name_pat_list
    Boolean? invert_match_select
    String? minsize
    Int? maxsize
    Int? max_n
    Boolean? uniq
    Boolean? make_uniq_case
    String in_dot_fa
  }
  command <<<
    faFilter \
      ~{in_dot_fa} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(name_pat_list) then ("-namePatList " +  '"' + name_pat_list + '"') else ""} \
      ~{if (invert_match_select) then "-v" else ""} \
      ~{if defined(minsize) then ("-minSize " +  '"' + minsize + '"') else ""} \
      ~{if defined(maxsize) then ("-maxSize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(max_n) then ("-maxN " +  '"' + max_n + '"') else ""} \
      ~{if (uniq) then "-uniq" else ""} \
      ~{if (make_uniq_case) then "-i" else ""}
  >>>
  parameter_meta {
    name: "- Only pass records where name matches wildcard\\n* matches any string or no character.\\n? matches any single character.\\nanything else etc must match the character exactly\\n(these will will need to be quoted for the shell)"
    name_pat_list: "- A list of regular expressions, one per line, that\\nwill be applied to the fasta name the same as -name"
    invert_match_select: "- invert match, select non-matching records."
    minsize: "- Only pass sequences at least this big."
    maxsize: "- Only pass sequences this size or smaller."
    max_n: "Only pass sequences with fewer than this number of N's"
    uniq: "- Removes duplicate sequence ids, keeping the first."
    make_uniq_case: "- make -uniq ignore case so sequence IDs ABC and abc count as dupes."
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
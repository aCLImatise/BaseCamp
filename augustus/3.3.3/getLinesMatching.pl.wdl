version 1.0

task GetLinesMatchingpl {
  input {
    Boolean? use_complement_print
    Int? pat_from
    Boolean? whitespace
    String cat
    String var_input
  }
  command <<<
    getLinesMatching_pl \
      ~{cat} \
      ~{var_input} \
      ~{if (use_complement_print) then "--v" else ""} \
      ~{if defined(pat_from) then ("--patfrom " +  '"' + pat_from + '"') else ""} \
      ~{if (whitespace) then "--whitespace" else ""}
  >>>
  parameter_meta {
    use_complement_print: "Use complement. Print all lines NOT matching."
    pat_from: "query replace regular expression to the\\nentry in the n-th column first before\\nchecking for membership in the list.\\nWill use the pattern s/$patfrom/$patto/\\nUseful for removing modifications, e.g.\\ntripping a trailing -1 before performing the\\ncheck.\\nBoth default to empty patterns."
    whitespace: "Split columns at whitespace rather than tab."
    cat: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}
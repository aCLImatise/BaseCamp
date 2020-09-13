version 1.0

task Stagdiffpl {
  input {
    Boolean? ignore
    Boolean? parser
    Boolean? report
    Boolean? verbose
    String mismatch_reported_report
    String algorithm
    String works
    String matches
    String author
  }
  command <<<
    stag_diff_pl \
      ~{mismatch_reported_report} \
      ~{algorithm} \
      ~{works} \
      ~{matches} \
      ~{author} \
      ~{if (ignore) then "-ignore" else ""} \
      ~{if (parser) then "-parser" else ""} \
      ~{if (report) then "-report" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    ignore: "|i ELEMENT\\nthese nodes are ignored for the purposes of comparison. Note that\\nattributes are treated as elements, prefixed by the containing\\nelement id. For example, if you have\\n<foo ID=\\\"wibble\\\">\\nAnd you wish to ignore the ID attribute, then you would use the\\nswitch\\n-ignore foo-ID\\nYou can specify multiple elements to ignore like this\\n-i foo -i bar -i baz\\nYou can also specify paths\\n-i foo/bar/bar-id"
    parser: "|p FORMAT\\nwhich parser to use. The default is XML. This can also be\\nautodetected by the file suffix. Other alternatives are sxpr and\\nitext. See Data::Stag for details."
    report: "|r ELEMENT\\nreport mismatches as they occur on each element of type ELEMENT\\nmultiple elements can be specified"
    verbose: "|v\\nused in conjunction with the -report switch\\nshows the tree of the mismatching element"
    mismatch_reported_report: "If a mismatch is reported, a report is generated displaying the subpart\\nof the tree that could not be matched. This will look like this:\\nREASON: no_matching_node: annotation no_matching_node: feature_set\\nno_matching_node: feature_span no_matching_node: evidence\\nno_matching_node: evidence-id data_mismatch(:15077290 ne :15077291):\\nevidence-id AND evidence-id\\nDue to the nature of tree matching, it can be difficult to specify\\nexactly how trees do not match. To investigate this, you may need to use\\nthe -r and -v options. For the above output, I would recommend using\\nstag-diff -r feature_span -v"
    algorithm: "Both trees are recursively traversed... see the actual code for how this"
    works: "The order of elements is not important; eg\\n<foo>\\n<bar>\\n<baz>1</baz>\\n</bar>\\n<bar>\\n<baz>2</baz>\\n</bar>\\n</foo>"
    matches: "<foo>\\n<bar>\\n<baz>2</baz>\\n</bar>\\n<bar>\\n<baz>1</baz>\\n</bar>\\n</foo>"
    author: "Chris Mungall cjm at fruitfly dot org"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Restover {
  input {
    Boolean? data_file
    Boolean? m_file
    Boolean? min
    Boolean? max
    Boolean? single
    Boolean? three_prime
    Boolean? plasmid
    Boolean? methylation
    Boolean? html
    Boolean? alphabetic
    Boolean? fragments
  }
  command <<<
    restover \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (m_file) then "-mfile" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (single) then "-single" else ""} \
      ~{if (three_prime) then "-threeprime" else ""} \
      ~{if (plasmid) then "-plasmid" else ""} \
      ~{if (methylation) then "-methylation" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (alphabetic) then "-alphabetic" else ""} \
      ~{if (fragments) then "-fragments" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_file: "datafile   Restriction enzyme data file (optional)"
    m_file: "datafile   [Emethylsites.dat] Restriction enzyme\\nmethylation data file"
    min: "integer    [1] Minimum cuts per RE (Integer from 1 to\\n1000)"
    max: "integer    [2000000000] Maximum cuts per RE (Any\\ninteger value)"
    single: "boolean    [N] Force single site only cuts"
    three_prime: "boolean    [N] Use 3' overhang e.g. BamHI has CTAG as a\\n5' overhang, and ApaI has CCGG as 3'\\noverhang."
    plasmid: "boolean    [N] Allow circular DNA"
    methylation: "boolean    [N] If this is set then RE recognition sites\\nwill not match methylated bases."
    html: "boolean    [N] Create HTML output"
    alphabetic: "boolean    [N] Sort output alphabetically"
    fragments: "boolean    [N] Show fragment lengths"
  }
  output {
    File out_stdout = stdout()
  }
}
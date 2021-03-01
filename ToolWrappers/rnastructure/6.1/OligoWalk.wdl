version 1.0

task OligoWalk {
  input {
    Boolean? dna
    Boolean? html
    File? no_header
    Boolean? score
    Boolean? web_server
    Boolean? write
    Boolean? conc
    Boolean? dist
    Boolean? end
    Boolean? filter
    Boolean? fold
    Boolean? length
    Boolean? mode
    Boolean? suboptimal
    Boolean? to
    Boolean? shape
    Boolean? from
    Boolean? start
    Boolean? test
    Boolean? unit
    File sequence_file
    File report_file
  }
  command <<<
    OligoWalk \
      ~{sequence_file} \
      ~{report_file} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (score) then "-score" else ""} \
      ~{if (web_server) then "--webserver" else ""} \
      ~{if (write) then "-write" else ""} \
      ~{if (conc) then "--conc" else ""} \
      ~{if (dist) then "-dist" else ""} \
      ~{if (end) then "--end" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (fold) then "-fold" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (suboptimal) then "--suboptimal" else ""} \
      ~{if (to) then "--to" else ""} \
      ~{if (shape) then "--shape" else ""} \
      ~{if (from) then "--from" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (unit) then "--unit" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna: "Indicate that the oligomers are DNA (as opposed to RNA)."
    html: "Write the report in HTML mode instead of plain text."
    no_header: "Do not include a list of the parameters used in the\\ncalulation in the output report file."
    score: "Score the siRNA prefilter."
    web_server: "Use special output for running OligoWalk as a webserver.\\nThis implies HTML=true and it sends the header (which lists the\\nparameters that were used in the calulation) to STDOUT instead of\\nincluding them in the report. It also turns off progress updates."
    write: "Write sav files to save time in test mode."
    conc: "Molar concentration of oligos. E.g. \\\"1.5E-6\\\", \\\"1.5uM\\\", or \\\"0.0000015\\\".\\nUnit Abbreviations: mM=10^-3 uM=10^-6, nM=10^-9, pM=10^-12\\nThis may be used in conjunction with the '--unit' flag: --conc 1.5 --unit\\n-6 (1.5 micromolar)."
    dist: "Limit the maximum distance between nucleotides that can pair."
    end: "End position of folding region of target."
    filter: "Whether to use the siRNA prefilter to prefill functional siRNA.\\n0=No Prefilter; 1=Use Prefilter"
    fold: "Only fold a fragment with the specified size (plus the length of\\nthe oligomer), which is centered on the binding region.\\nWhen FOLD_SIZE > 1, MODE (-m) and SUBOPTIMAL (-s) must both be 2."
    length: "Length of oligomers for hybridization."
    mode: "Determines how target structure is used:\\n1=Break Local Structure.\\n2=Refold target RNA after oligo binding.\\n3=No target structure considered."
    suboptimal: "Determines suboptimal structure options:\\n0=Do not consider suboptimal structures.\\n1=Use AllSub to generate suboptimal structures.\\n2=Use Partition Function to generate all suboptimal structures.\\n3=Use a heuristic method for both oligo-free and oligo-bound RNA.\\n4=Use stochastic sampling to generate 1000 structures."
    to: "End position of scanning on folded region of target."
    shape: "Specify a SHAPE data file."
    from: "Start position of scanning on folded region of target."
    start: "Start position of folding region of target."
    test: "Perform self-tests. The parameter should be a list of space-separated test\\nnumbers, e.g.: -test '1 2 5'"
    unit: "Specifies a power-of-ten to multiply the concentration by.\\nFor example \\\"-co 3 -unit -6\\\" is equal to \\\"-co 3uM\\\" or \\\"-co 3E-6\\\"\\n"
    sequence_file: ""
    report_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_no_header = "${in_no_header}"
  }
}
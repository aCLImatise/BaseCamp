version 1.0

task Mp3treesim {
  input {
    Boolean? run_mptreesim_intersection
    Boolean? run_mptreesim_mode
    Boolean? run_mptreesim_geometric
    Int? cores
    Boolean? labeled_only
    Boolean? exclude
    String tree
  }
  command <<<
    mp3treesim \
      ~{tree} \
      ~{if (run_mptreesim_intersection) then "-i" else ""} \
      ~{if (run_mptreesim_mode) then "-u" else ""} \
      ~{if (run_mptreesim_geometric) then "-g" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (labeled_only) then "--labeled-only" else ""} \
      ~{if (exclude) then "--exclude" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_mptreesim_intersection: "Run MP3-treesim in Intersection mode."
    run_mptreesim_mode: "Run MP3-treesim in Union mode."
    run_mptreesim_geometric: "Run MP3-treesim in Geometric mode."
    cores: "Number of cores to be used in computation."
    labeled_only: "Ingore nodes without \\\"label\\\" attribute. The trees will\\nbe interpred as partially-label trees."
    exclude: "[EXCLUDE [EXCLUDE ...]]\\nString(s) of comma separated labels to exclude from\\ncomputation. If only one string is provided the labels\\nwill be excluded from both trees. If two strings are\\nprovided they will be excluded from the respective\\ntree. E.g.: --exclude \\\"A,D,E\\\" will exclude labels from\\nboth trees; --exclude \\\"A,B\\\" \\\"C,F\\\" will exclude A,B\\nfrom Tree 1 and C,F from Tree 2; --exclude \\\"\\\" \\\"C\\\" will\\nexclude and C from Tree 2 and nothing from Tree 1\\n"
    tree: "Paths to the trees"
  }
  output {
    File out_stdout = stdout()
  }
}
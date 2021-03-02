version 1.0

task PurgeDups {
  input {
    Boolean? str_baselevel_coverage
    Boolean? str_cutoffs_file
    Boolean? int_minimum_fraction
    Boolean? int_minimum_alignment
    Boolean? int_minimum_max
    Boolean? bool_rounds_chaining
    Boolean? int_minimum_matching
    Boolean? int_maximum_chaining
    Boolean? int_maximum_nd
    Boolean? int_minimum_chaining
    Boolean? int_maximum_extension
    String paf
  }
  command <<<
    purge_dups \
      ~{paf} \
      ~{if (str_baselevel_coverage) then "-c" else ""} \
      ~{if (str_cutoffs_file) then "-T" else ""} \
      ~{if (int_minimum_fraction) then "-f" else ""} \
      ~{if (int_minimum_alignment) then "-a" else ""} \
      ~{if (int_minimum_max) then "-b" else ""} \
      ~{if (bool_rounds_chaining) then "-2" else ""} \
      ~{if (int_minimum_matching) then "-m" else ""} \
      ~{if (int_maximum_chaining) then "-M" else ""} \
      ~{if (int_maximum_nd) then "-G" else ""} \
      ~{if (int_minimum_chaining) then "-l" else ""} \
      ~{if (int_maximum_extension) then "-E" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0"
  }
  parameter_meta {
    str_baselevel_coverage: "STR      base-level coverage file [NULL]"
    str_cutoffs_file: "STR      cutoffs file [NULL]"
    int_minimum_fraction: "INT      minimum fraction of haploid/diploid/bad/repetitive bases in a sequence [.8]"
    int_minimum_alignment: "INT      minimum alignment score [70]"
    int_minimum_max: "INT      minimum max match score [200]"
    bool_rounds_chaining: "BOOL     2 rounds chaining [FALSE]"
    int_minimum_matching: "INT      minimum matching bases for chaining [500]"
    int_maximum_chaining: "INT      maximum gap size for chaining [20K]"
    int_maximum_nd: "INT      maximum gap size for 2nd round chaining [50K]"
    int_minimum_chaining: "INT      minimum chaining score for a match [10K]"
    int_maximum_extension: "INT      maximum extension for contig ends [15K]"
    paf: ""
  }
  output {
    File out_stdout = stdout()
  }
}
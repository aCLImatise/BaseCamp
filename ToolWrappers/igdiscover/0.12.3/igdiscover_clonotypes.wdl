version 1.0

task IgdiscoverClonotypes {
  input {
    Boolean? sort
    String? limit
    String? v_shm_threshold
    Int? cdr_three_core
    Int? mismatches
    Boolean? aa
    File? members
  }
  command <<<
    igdiscover clonotypes \
      ~{if (sort) then "--sort" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(v_shm_threshold) then ("--v-shm-threshold " +  '"' + v_shm_threshold + '"') else ""} \
      ~{if defined(cdr_three_core) then ("--cdr3-core " +  '"' + cdr_three_core + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if (aa) then "--aa" else ""} \
      ~{if defined(members) then ("--members " +  '"' + members + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort: "Sort by group size (largest first). Default: Sort by\\nV/D/J gene names"
    limit: "Print out only the first N groups"
    v_shm_threshold: "V SHM threshold for _mindiffrate computations"
    cdr_three_core: ":END\\nSTART:END defines the non-junction region of CDR3\\nsequences. Use negative numbers for END to count from\\nthe end. Regions before and after are considered to be\\njunction sequence, and for two CDR3s to be considered\\nsimilar, at least one of the junctions must be\\nidentical. Default: no junction region."
    mismatches: "No. of allowed mismatches between CDR3 sequences. Can\\nalso be a fraction between 0 and 1 (such as 0.15),\\ninterpreted relative to the length of the CDR3 (minus\\nthe front non-core). Default: 1"
    aa: "Count CDR3 mismatches on amino-acid level. Default:\\nCompare nucleotides."
    members: "Write member table to FILE"
  }
  output {
    File out_stdout = stdout()
  }
}
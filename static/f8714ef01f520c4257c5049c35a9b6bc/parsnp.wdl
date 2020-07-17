version 1.0

task Parsnp {
  input {
    String? query
    Int? max_mumi_distr_dist
    Int? max_mumi_distance
    Boolean? fast_mum
    Boolean? mumi_only
    Boolean? use_ani
    Int? min_ani
    Boolean? use_mash
    Int? max_mash_dist
    Int? min_anchor_length
    String? mum_length
    Int? max_cluster_d
    Int? min_cluster_size
    Int? max_diagonal_difference
    String? alignment_program
    Boolean? unaligned
    Boolean? probe
    Boolean? c
    Array[String] d
    String? r
  }
  command <<<
    parsnp \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(max_mumi_distr_dist) then ("--max-mumi-distr-dist " +  '"' + max_mumi_distr_dist + '"') else ""} \
      ~{if defined(max_mumi_distance) then ("--max-mumi-distance " +  '"' + max_mumi_distance + '"') else ""} \
      ~{true="--fastmum" false="" fast_mum} \
      ~{true="--mumi_only" false="" mumi_only} \
      ~{true="--use-ani" false="" use_ani} \
      ~{if defined(min_ani) then ("--min-ani " +  '"' + min_ani + '"') else ""} \
      ~{true="--use-mash" false="" use_mash} \
      ~{if defined(max_mash_dist) then ("--max-mash-dist " +  '"' + max_mash_dist + '"') else ""} \
      ~{if defined(min_anchor_length) then ("--min-anchor-length " +  '"' + min_anchor_length + '"') else ""} \
      ~{if defined(mum_length) then ("--mum-length " +  '"' + mum_length + '"') else ""} \
      ~{if defined(max_cluster_d) then ("--max-cluster-d " +  '"' + max_cluster_d + '"') else ""} \
      ~{if defined(min_cluster_size) then ("--min-cluster-size " +  '"' + min_cluster_size + '"') else ""} \
      ~{if defined(max_diagonal_difference) then ("--max-diagonal-difference " +  '"' + max_diagonal_difference + '"') else ""} \
      ~{if defined(alignment_program) then ("--alignment-program " +  '"' + alignment_program + '"') else ""} \
      ~{true="--unaligned" false="" unaligned} \
      ~{true="--probe" false="" probe} \
      ~{true="-c" false="" c} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    query: "Specify (assembled) query genome to use, in addition to genomes found in genome dir"
    max_mumi_distr_dist: "Max MUMi distance value for MUMi distribution"
    max_mumi_distance: "Max MUMi distance (default: autocutoff based on distribution of MUMi values)"
    fast_mum: "Fast MUMi calculation"
    mumi_only: "Calculate MUMi and exit? overrides all other choices!"
    use_ani: "Use ani for genome recruitment"
    min_ani: "Min ANI value to allow for genome recruitment."
    use_mash: "Use mash for genome recruitment"
    max_mash_dist: "Max mash distance."
    min_anchor_length: "Min (a)NCHOR length (default = 1.1*(Log(S)))"
    mum_length: "Mum length"
    max_cluster_d: "Maximal cluster D value"
    min_cluster_size: "Minimum cluster size"
    max_diagonal_difference: "Maximal diagonal difference. Either percentage (e.g. 0.2) or bp (e.g. 100bp)"
    alignment_program: "Alignment program to use"
    unaligned: "Ouput unaligned regions"
    probe: "Remove genome length constraints to search for MUMs in concatenated sequences much larger than reference"
    c: ""
    d: ""
    r: ""
  }
}
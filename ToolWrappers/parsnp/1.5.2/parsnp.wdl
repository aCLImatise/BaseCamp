version 1.0

task Parsnp {
  input {
    File? curated
    Int? max_mumi_distr_dist
    Int? max_mumi_distance
    Boolean? fast_mum
    Boolean? mumi_only
    Boolean? use_ani
    Int? min_ani
    Boolean? use_mash
    Int? max_mash_dist
    Int? min_anchor_length
    Int? mum_length
    Int? max_cluster_d
    Int? min_cluster_size
    Int? max_diagonal_difference
    String? alignment_program
    Boolean? unaligned
    Boolean? use_fast_tree
    String? r
    Array[String] d
  }
  command <<<
    parsnp \
      ~{if (curated) then "--curated" else ""} \
      ~{if defined(max_mumi_distr_dist) then ("--max-mumi-distr-dist " +  '"' + max_mumi_distr_dist + '"') else ""} \
      ~{if defined(max_mumi_distance) then ("--max-mumi-distance " +  '"' + max_mumi_distance + '"') else ""} \
      ~{if (fast_mum) then "--fastmum" else ""} \
      ~{if (mumi_only) then "--mumi_only" else ""} \
      ~{if (use_ani) then "--use-ani" else ""} \
      ~{if defined(min_ani) then ("--min-ani " +  '"' + min_ani + '"') else ""} \
      ~{if (use_mash) then "--use-mash" else ""} \
      ~{if defined(max_mash_dist) then ("--max-mash-dist " +  '"' + max_mash_dist + '"') else ""} \
      ~{if defined(min_anchor_length) then ("--min-anchor-length " +  '"' + min_anchor_length + '"') else ""} \
      ~{if defined(mum_length) then ("--mum-length " +  '"' + mum_length + '"') else ""} \
      ~{if defined(max_cluster_d) then ("--max-cluster-d " +  '"' + max_cluster_d + '"') else ""} \
      ~{if defined(min_cluster_size) then ("--min-cluster-size " +  '"' + min_cluster_size + '"') else ""} \
      ~{if defined(max_diagonal_difference) then ("--max-diagonal-difference " +  '"' + max_diagonal_difference + '"') else ""} \
      ~{if defined(alignment_program) then ("--alignment-program " +  '"' + alignment_program + '"') else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if (use_fast_tree) then "--use-fasttree" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    curated: "(c)urated genome directory, use all genomes in dir and ignore MUMi?\\n-d SEQUENCES [SEQUENCES ...], --sequences SEQUENCES [SEQUENCES ...]\\nA list of files containing genomes/contigs/scaffolds\\n-r REFERENCE, --reference REFERENCE\\n(r)eference genome (set to ! to pick random one from sequence dir)\\n-g GENBANK [GENBANK ...], --genbank GENBANK [GENBANK ...]\\nA list of Genbank file(s) (gbk)\\n-o OUTPUT_DIR, --output-dir OUTPUT_DIR\\n-q QUERY, --query QUERY\\nSpecify (assembled) query genome to use, in addition to genomes found in genome dir"
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
    use_fast_tree: "Use fasttree instead of RaxML\\n-p THREADS, --threads THREADS\\nNumber of threads to use\\n-P MAX_PARTITION_SIZE, --max-partition-size MAX_PARTITION_SIZE\\nMax partition size (limits memory usage)\\n-v, --verbose         Verbose output\\n-x, --xtrafast\\n-i INIFILE, --inifile INIFILE, --ini-file INIFILE\\n-e, --extend\\n-V, --version         show program's version number and exit\\n"
    r: ""
    d: ""
  }
  output {
    File out_stdout = stdout()
    File out_curated = "${in_curated}"
  }
}
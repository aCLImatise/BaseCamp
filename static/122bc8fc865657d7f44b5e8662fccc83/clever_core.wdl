version 1.0

task CleverCore {
  input {
    Boolean? verbose_output_additional
    Boolean? arg_significance_level
    Boolean? arg_minimum_weight
    Boolean? arg_maximum_insert
    Boolean? arg_maximum_allowed
    Boolean? arg_write_edges
    Boolean? arg_false_discovery
    Boolean? output_cliques_ones
    Boolean? arg_output_reads
    Boolean? arg_output_coverage
    Boolean? use_separate_deviations
    Boolean? use_given_distribution
    Boolean? arg_load_cached
    Boolean? arg_bam_file
    Boolean? read_groups_come
    String distribution_file
  }
  command <<<
    clever-core \
      ~{distribution_file} \
      ~{true="-v" false="" verbose_output_additional} \
      ~{true="-p" false="" arg_significance_level} \
      ~{true="-w" false="" arg_minimum_weight} \
      ~{true="-l" false="" arg_maximum_insert} \
      ~{true="-c" false="" arg_maximum_allowed} \
      ~{true="-e" false="" arg_write_edges} \
      ~{true="-f" false="" arg_false_discovery} \
      ~{true="-a" false="" output_cliques_ones} \
      ~{true="-r" false="" arg_output_reads} \
      ~{true="-C" false="" arg_output_coverage} \
      ~{true="-A" false="" use_separate_deviations} \
      ~{true="-d" false="" use_given_distribution} \
      ~{true="-D" false="" arg_load_cached} \
      ~{true="-R" false="" arg_bam_file} \
      ~{true="-S" false="" read_groups_come}
  >>>
  parameter_meta {
    verbose_output_additional: "[ --verbose ]                      Be verbose: output additional  statistics for each variation."
    arg_significance_level: "[ --edge_sig_level ] arg (=0.20000000000000001) Significance level for edges (the lower the level, the more edges will be  present)."
    arg_minimum_weight: "[ --min_aln_weight ] arg (=0.0016000000000000001) Minimum weight of alignment pairs to be considered."
    arg_maximum_insert: "[ --max_insert_length ] arg (=50000) Maximum insert length of alignments to  be considered (0=unlimited)."
    arg_maximum_allowed: "[ --max_coverage ] arg (=200)      Maximum allowed coverage. If exceeded,  violating reads are ignored. The number of such ignored reads is printed to  stderr (0=unlimited)."
    arg_write_edges: "[ --write_edges ] arg              Write edges to file of given name."
    arg_false_discovery: "[ --fdr ] arg (=0.10000000000000001) False discovery rate (FDR)."
    output_cliques_ones: "[ --all ]                          Output all cliques instead of only the  significant ones. Cliques are not  sorted and last column (FDR) is not  computed."
    arg_output_reads: "[ --output_reads ] arg             Output reads belonging to at least one  significant clique to the given  filename (along with their assignment  to significant cliques."
    arg_output_coverage: "[ --output_coverage ] arg          Output the coverage with considered  insert segments along the chromosome  (one line per position) to the given  filename."
    use_separate_deviations: "[ --readgroup_aware ]              Use a separate mean and standard  deviations per read group. If given,  argument <distribution-file> must refer to a file containing this information."
    use_given_distribution: "[ --arbitrary_dist ]               Use a given (arbitrary) distribution  instead of a normal distribution as  null model (EXPERIMENTAL)."
    arg_load_cached: "[ --cached_dist ] arg              Load cached distributions as  precomputed with tool  \"precompute-distributions\". Does not  change results, but increases speed.  Only applicable when using option -d."
    arg_bam_file: "[ --read_groups ] arg              BAM file from whose header read group  information is to be read, required if  options -A or -S are to be used."
    read_groups_come: "[ --multisample ]                  Read groups come from multiple samples  as indicated by SM fields in BAM  header. Evaluate cliques sample wise."
    distribution_file: ""
  }
}
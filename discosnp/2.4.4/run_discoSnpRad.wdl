version 1.0

task RunDiscoSnpRad.sh {
  input {
    Boolean? _graph_file
    Boolean? _prefix_string
    Boolean? _maxcoverage_int
    Boolean? _nolowcomplexity_remove
    Boolean? _deletionmaxsize_int
    Int? max_size_cluster
    Float? max_missing
    Float? min_rank
    Boolean? _maxsnpperbubble_int
    Boolean? _maxsubstitutions_int
    Boolean? _maxthreads_int
    Boolean? wraith_mode_only
    String? verbose_avoids_output
  }
  command <<<
    run_discoSnpRad.sh \
      ~{true="-g" false="" _graph_file} \
      ~{true="-p" false="" _prefix_string} \
      ~{true="-C" false="" _maxcoverage_int} \
      ~{true="-l" false="" _nolowcomplexity_remove} \
      ~{true="-D" false="" _deletionmaxsize_int} \
      ~{if defined(max_size_cluster) then ("--max_size_cluster " +  '"' + max_size_cluster + '"') else ""} \
      ~{if defined(max_missing) then ("--max_missing " +  '"' + max_missing + '"') else ""} \
      ~{if defined(min_rank) then ("--min_rank " +  '"' + min_rank + '"') else ""} \
      ~{true="-P" false="" _maxsnpperbubble_int} \
      ~{true="-d" false="" _maxsubstitutions_int} \
      ~{true="-u" false="" _maxthreads_int} \
      ~{true="-w" false="" wraith_mode_only} \
      ~{if defined(verbose_avoids_output) then ("-v " +  '"' + verbose_avoids_output + '"') else ""}
  >>>
  parameter_meta {
    _graph_file: "| --graph <file name> reuse a previously created graph (.h5 file) with same prefix and same k and c parameters."
    _prefix_string: "| --prefix <string> All out files will start with this prefix. Default=\"discoRes\""
    _maxcoverage_int: "| --max_coverage <int value> Set the maximal coverage for each read set: Used by kissnp2 (don't use kmers with higher coverage). Default=2^31-1"
    _nolowcomplexity_remove: "| --no_low_complexity Remove low complexity bubbles"
    _deletionmaxsize_int: "| --deletion_max_size <int value> discoSnpRad will search for deletions of size from 1 to D included. Default=0"
    max_size_cluster: "Discards cluster containing more than this number of variants. (Default 150) Requires the -S or --src option"
    max_missing: "Remove variants with more than max_missing % missing values. (Default 0.95, removes variants detected in 5% and less populations)"
    min_rank: "Remove variants whose rank is smaller than this threshold. (Default 0.4)"
    _maxsnpperbubble_int: "| --max_snp_per_bubble <int> discoSnpRad will search up to P SNPs in a unique bubble. Default=5"
    _maxsubstitutions_int: "| --max_substitutions <int> Set the number of authorized substitutions used while mapping reads on found SNPs (kissreads). Default=10"
    _maxthreads_int: "| --max_threads <int> Max number of used threads. 0 means all threads default 0"
    wraith_mode_only: "Wraith mode: only show all discoSnpRad commands without running them"
    verbose_avoids_output: "Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1."
  }
}
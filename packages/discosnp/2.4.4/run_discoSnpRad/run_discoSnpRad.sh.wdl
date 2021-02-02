version 1.0

task RunDiscoSnpRadsh {
  input {
    Boolean? f_of
    Boolean? _ksize_value
    Boolean? _mincoverage_value
    Boolean? high_precision
    Boolean? _graph_file
    Boolean? _prefix_stringall
    Boolean? _maxcoverage_int
    Boolean? _nolowcomplexityremove_low
    Boolean? _deletionmaxsize_int
    Boolean? src
    Int? max_size_cluster
    Float? max_missing
    Float? min_rank
    Boolean? _maxsnpperbubble_intdiscosnprad
    Boolean? _intset_number
    Boolean? _maxthreads_intmax
    Boolean? wraith_mode_only
    Int? verbose_avoids_output
  }
  command <<<
    run_discoSnpRad_sh \
      ~{if (f_of) then "--fof" else ""} \
      ~{if (_ksize_value) then "-k" else ""} \
      ~{if (_mincoverage_value) then "-c" else ""} \
      ~{if (high_precision) then "--high_precision" else ""} \
      ~{if (_graph_file) then "-g" else ""} \
      ~{if (_prefix_stringall) then "-p" else ""} \
      ~{if (_maxcoverage_int) then "-C" else ""} \
      ~{if (_nolowcomplexityremove_low) then "-l" else ""} \
      ~{if (_deletionmaxsize_int) then "-D" else ""} \
      ~{if (src) then "--src" else ""} \
      ~{if defined(max_size_cluster) then ("--max_size_cluster " +  '"' + max_size_cluster + '"') else ""} \
      ~{if defined(max_missing) then ("--max_missing " +  '"' + max_missing + '"') else ""} \
      ~{if defined(min_rank) then ("--min_rank " +  '"' + min_rank + '"') else ""} \
      ~{if (_maxsnpperbubble_intdiscosnprad) then "-P" else ""} \
      ~{if (_intset_number) then "-d" else ""} \
      ~{if (_maxthreads_intmax) then "-u" else ""} \
      ~{if (wraith_mode_only) then "-w" else ""} \
      ~{if defined(verbose_avoids_output) then ("-v " +  '"' + verbose_avoids_output + '"') else ""}
  >>>
  parameter_meta {
    f_of: "<file name of a file of file(s)>\\nThe input read files indicated in a file of file(s)\\nExample: -r bank.fof with bank.fof containing the two lines\\ndata_sample/reads_sequence1.fasta\\ndata_sample/reads_sequence2.fasta.gz"
    _ksize_value: "| --k_size value <int value>\\nSet the length of used kmers. Must fit the compiled value.\\nDefault=31"
    _mincoverage_value: "| --min_coverage value <int value>\\nSet the minimal coverage per read set: Used by kissnp2 (don't use kmers with lower coverage) and kissreads (read coherency threshold).\\nThis coverage can be automatically detected per read set (in this case use \\\"auto\\\" or specified per read set, see the documentation.)\\nDefault=3"
    high_precision: "| -R\\nlower recall / higher precision mode. With this parameter no symmetrical crossroads may be traversed during bubble detection (by default up to 5 symmetrical crossroads may be traversed during bubble detection)."
    _graph_file: "| --graph <file name>\\nreuse a previously created graph (.h5 file) with same prefix and same k and c parameters."
    _prefix_stringall: "| --prefix <string>\\nAll out files will start with this prefix. Default=\\\"discoRes\\\""
    _maxcoverage_int: "| --max_coverage <int value>\\nSet the maximal coverage for each read set: Used by kissnp2 (don't use kmers with higher coverage).\\nDefault=2^31-1"
    _nolowcomplexityremove_low: "| --no_low_complexity\\nRemove low complexity bubbles"
    _deletionmaxsize_int: "| --deletion_max_size <int value>\\ndiscoSnpRad will search for deletions of size from 1 to D included. Default=0"
    src: "[src_path]\\nperforms clustering of variants with short_read_connector\\nsrc_path: **absolute** path to short_read_connector directory, containing the \\\"short_read_connector.sh\\\" file.\\n-Note1: short read connector must be compiled.\\n-Note2: if no value is given, it assumes short_read_connector.sh is in the PATH env variable.\\n-Note3: with this option, discoSnpRad outputs a vcf file containing the variants clustered by locus"
    max_size_cluster: "Discards cluster containing more than this number of variants. (Default 150)\\nRequires the -S or --src option"
    max_missing: "Remove variants with more than max_missing % missing values. (Default 0.95, removes variants detected in 5% and less populations)"
    min_rank: "Remove variants whose rank is smaller than this threshold. (Default 0.4)"
    _maxsnpperbubble_intdiscosnprad: "| --max_snp_per_bubble <int>\\ndiscoSnpRad will search up to P SNPs in a unique bubble. Default=5"
    _intset_number: "| --max_substitutions <int>\\nSet the number of authorized substitutions used while mapping reads on found SNPs (kissreads). Default=10"
    _maxthreads_intmax: "| --max_threads <int>\\nMax number of used threads. 0 means all threads\\ndefault 0"
    wraith_mode_only: "Wraith mode: only show all discoSnpRad commands without running them"
    verbose_avoids_output: "Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1."
  }
  output {
    File out_stdout = stdout()
  }
}
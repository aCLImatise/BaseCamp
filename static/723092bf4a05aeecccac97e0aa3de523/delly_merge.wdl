version 1.0

task DellyMerge {
  input {
    Boolean? arg_merged_sv
    Boolean? arg_chunk_size
    Boolean? arg_min_fractional
    Boolean? arg_min_coverage
    Boolean? arg_min_sv
    Boolean? arg_max_sv
    Boolean? filter_sites_precise
    Boolean? filter_sites_pass
    Boolean? arg_max_breakpoint
    Boolean? arg_min_reciprocal
  }
  command <<<
    delly merge \
      ~{true="-o" false="" arg_merged_sv} \
      ~{true="-u" false="" arg_chunk_size} \
      ~{true="-a" false="" arg_min_fractional} \
      ~{true="-v" false="" arg_min_coverage} \
      ~{true="-m" false="" arg_min_sv} \
      ~{true="-n" false="" arg_max_sv} \
      ~{true="-c" false="" filter_sites_precise} \
      ~{true="-p" false="" filter_sites_pass} \
      ~{true="-b" false="" arg_max_breakpoint} \
      ~{true="-r" false="" arg_min_reciprocal}
  >>>
  parameter_meta {
    arg_merged_sv: "[ --outfile ] arg (=\"sv.bcf\")      Merged SV BCF output file"
    arg_chunk_size: "[ --chunks ] arg (=500)            max. chunk size to merge groups of BCF  files"
    arg_min_fractional: "[ --vaf ] arg (=0.150000006)       min. fractional ALT support"
    arg_min_coverage: "[ --coverage ] arg (=10)           min. coverage"
    arg_min_sv: "[ --minsize ] arg (=0)             min. SV size"
    arg_max_sv: "[ --maxsize ] arg (=1000000)       max. SV size"
    filter_sites_precise: "[ --precise ]                      Filter sites for PRECISE"
    filter_sites_pass: "[ --pass ]                         Filter sites for PASS"
    arg_max_breakpoint: "[ --bp-offset ] arg (=1000)        max. breakpoint offset"
    arg_min_reciprocal: "[ --rec-overlap ] arg (=0.800000012) min. reciprocal overlap"
  }
}
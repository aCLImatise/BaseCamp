version 1.0

task DellyMerge {
  input {
    File? arg_merged_sv
    Boolean? arg_max_chunk
    Boolean? arg_min_coverage
    Boolean? arg_min_sv
    Boolean? arg_max_sv
    Boolean? merge_delly_files
    Boolean? filter_sites_precise
    Boolean? filter_sites_pass
    Boolean? arg_max_breakpoint
    Boolean? arg_reciprocal_overlap
    String files
  }
  command <<<
    delly merge \
      ~{files} \
      ~{if (arg_merged_sv) then "-o" else ""} \
      ~{if (arg_max_chunk) then "-u" else ""} \
      ~{if (arg_min_coverage) then "-v" else ""} \
      ~{if (arg_min_sv) then "-m" else ""} \
      ~{if (arg_max_sv) then "-n" else ""} \
      ~{if (merge_delly_files) then "-e" else ""} \
      ~{if (filter_sites_precise) then "-c" else ""} \
      ~{if (filter_sites_pass) then "-p" else ""} \
      ~{if (arg_max_breakpoint) then "-b" else ""} \
      ~{if (arg_reciprocal_overlap) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/delly:0.8.7--hf3ca161_0"
  }
  parameter_meta {
    arg_merged_sv: "[ --outfile ] arg (=\\\"sv.bcf\\\")      Merged SV BCF output file"
    arg_max_chunk: "[ --chunks ] arg (=500)            max. chunk size to merge groups of BCF"
    arg_min_coverage: "[ --coverage ] arg (=10)           min. coverage"
    arg_min_sv: "[ --minsize ] arg (=0)             min. SV size"
    arg_max_sv: "[ --maxsize ] arg (=1000000)       max. SV size"
    merge_delly_files: "[ --cnvmode ]                      Merge delly CNV files"
    filter_sites_precise: "[ --precise ]                      Filter sites for PRECISE"
    filter_sites_pass: "[ --pass ]                         Filter sites for PASS"
    arg_max_breakpoint: "[ --bp-offset ] arg (=1000)        max. breakpoint offset"
    arg_reciprocal_overlap: "[ --rec-overlap ] arg (=0.800000012)\\nmin. reciprocal overlap\\n"
    files: "-a [ --vaf ] arg (=0.150000006)       min. fractional ALT support"
  }
  output {
    File out_stdout = stdout()
    File out_arg_merged_sv = "${in_arg_merged_sv}"
  }
}
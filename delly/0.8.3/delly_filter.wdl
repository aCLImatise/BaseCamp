version 1.0

task DellyFilter {
  input {
    Boolean? arg_somatic_filter
    Boolean? arg_filtered_sv
    Boolean? arg_min_fractional
    Boolean? arg_min_sv
    Boolean? arg_max_sv
    Boolean? arg__min
    Boolean? filter_sites_pass
    Boolean? arg_twocolumn_file
    Boolean? arg_min_coverage
    Boolean? arg_max_fractional
    Boolean? arg_min_gq
    Boolean? arg_max_readdepth
    Boolean? arg_min_readdepth
    String input_dot_bcf
  }
  command <<<
    delly filter \
      ~{input_dot_bcf} \
      ~{true="-f" false="" arg_somatic_filter} \
      ~{true="-o" false="" arg_filtered_sv} \
      ~{true="-a" false="" arg_min_fractional} \
      ~{true="-m" false="" arg_min_sv} \
      ~{true="-n" false="" arg_max_sv} \
      ~{true="-r" false="" arg__min} \
      ~{true="-p" false="" filter_sites_pass} \
      ~{true="-s" false="" arg_twocolumn_file} \
      ~{true="-v" false="" arg_min_coverage} \
      ~{true="-c" false="" arg_max_fractional} \
      ~{true="-q" false="" arg_min_gq} \
      ~{true="-e" false="" arg_max_readdepth} \
      ~{true="-u" false="" arg_min_readdepth}
  >>>
  parameter_meta {
    arg_somatic_filter: "[ --filter ] arg (=somatic)        Filter mode (somatic, germline)"
    arg_filtered_sv: "[ --outfile ] arg (=\"sv.bcf\")      Filtered SV BCF output file"
    arg_min_fractional: "[ --altaf ] arg (=0.200000003)     min. fractional ALT support"
    arg_min_sv: "[ --minsize ] arg (=0)             min. SV size"
    arg_max_sv: "[ --maxsize ] arg (=500000000)     max. SV size"
    arg__min: "[ --ratiogeno ] arg (=0.75)        min. fraction of genotyped samples"
    filter_sites_pass: "[ --pass ]                         Filter sites for PASS"
    arg_twocolumn_file: "[ --samples ] arg                  Two-column sample file listing sample  name and tumor or control"
    arg_min_coverage: "[ --coverage ] arg (=10)           min. coverage in tumor"
    arg_max_fractional: "[ --controlcontamination ] arg (=0) max. fractional ALT support in control"
    arg_min_gq: "[ --gq ] arg (=15)                 min. median GQ for carriers and  non-carriers"
    arg_max_readdepth: "[ --rddel ] arg (=0.800000012)     max. read-depth ratio of carrier vs.  non-carrier for a deletion"
    arg_min_readdepth: "[ --rddup ] arg (=1.20000005)      min. read-depth ratio of carrier vs.  non-carrier for a duplication"
    input_dot_bcf: ""
  }
}
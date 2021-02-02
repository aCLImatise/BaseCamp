version 1.0

task DellyFilter {
  input {
    Boolean? arg_somatic_mode
    File? arg_filtered_file
    Boolean? arg_min_fractional
    Boolean? arg_min_sv
    Boolean? arg_sv_size
    Boolean? arg_min_fraction
    Boolean? filter_sites_pass
    Boolean? arg_twocolumn_sample
    Boolean? arg_min_coverage
    Boolean? arg_max_fractional
    Boolean? arg_min_gq
    Boolean? arg_min_readdepth
    String non_carriers
  }
  command <<<
    delly filter \
      ~{non_carriers} \
      ~{if (arg_somatic_mode) then "-f" else ""} \
      ~{if (arg_filtered_file) then "-o" else ""} \
      ~{if (arg_min_fractional) then "-a" else ""} \
      ~{if (arg_min_sv) then "-m" else ""} \
      ~{if (arg_sv_size) then "-n" else ""} \
      ~{if (arg_min_fraction) then "-r" else ""} \
      ~{if (filter_sites_pass) then "-p" else ""} \
      ~{if (arg_twocolumn_sample) then "-s" else ""} \
      ~{if (arg_min_coverage) then "-v" else ""} \
      ~{if (arg_max_fractional) then "-c" else ""} \
      ~{if (arg_min_gq) then "-q" else ""} \
      ~{if (arg_min_readdepth) then "-u" else ""}
  >>>
  parameter_meta {
    arg_somatic_mode: "[ --filter ] arg (=somatic)        Filter mode (somatic, germline)"
    arg_filtered_file: "[ --outfile ] arg (=\\\"sv.bcf\\\")      Filtered SV BCF output file"
    arg_min_fractional: "[ --altaf ] arg (=0.200000003)     min. fractional ALT support"
    arg_min_sv: "[ --minsize ] arg (=0)             min. SV size"
    arg_sv_size: "[ --maxsize ] arg (=500000000)     max. SV size"
    arg_min_fraction: "[ --ratiogeno ] arg (=0.75)        min. fraction of genotyped samples"
    filter_sites_pass: "[ --pass ]                         Filter sites for PASS"
    arg_twocolumn_sample: "[ --samples ] arg                  Two-column sample file listing sample\\nname and tumor or control"
    arg_min_coverage: "[ --coverage ] arg (=10)           min. coverage in tumor"
    arg_max_fractional: "[ --controlcontamination ] arg (=0)\\nmax. fractional ALT support in control"
    arg_min_gq: "[ --gq ] arg (=15)                 min. median GQ for carriers and"
    arg_min_readdepth: "[ --rddup ] arg (=1.20000005)      min. read-depth ratio of carrier vs.\\nnon-carrier for a duplication\\n"
    non_carriers: "-e [ --rddel ] arg (=0.800000012)     max. read-depth ratio of carrier vs. "
  }
  output {
    File out_stdout = stdout()
    File out_arg_filtered_file = "${in_arg_filtered_file}"
  }
}
version 1.0

task DellyClassify {
  input {
    Boolean? arg_somatic_somatic
    File? arg_filtered_file
    Boolean? arg_min_size
    Boolean? arg_max_size
    Boolean? filter_sites_pass
    Boolean? arg_twocolumn_sample
    Boolean? arg_probability_germline
    Boolean? arg_min_cn
    Boolean? arg_baseline_ploidy
    Boolean? arg_min_site
    Boolean? arg_max_population
    String input_dot_bcf
  }
  command <<<
    delly classify \
      ~{input_dot_bcf} \
      ~{if (arg_somatic_somatic) then "-f" else ""} \
      ~{if (arg_filtered_file) then "-o" else ""} \
      ~{if (arg_min_size) then "-m" else ""} \
      ~{if (arg_max_size) then "-n" else ""} \
      ~{if (filter_sites_pass) then "-p" else ""} \
      ~{if (arg_twocolumn_sample) then "-s" else ""} \
      ~{if (arg_probability_germline) then "-e" else ""} \
      ~{if (arg_min_cn) then "-t" else ""} \
      ~{if (arg_baseline_ploidy) then "-y" else ""} \
      ~{if (arg_min_site) then "-q" else ""} \
      ~{if (arg_max_population) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/delly:0.8.7--hf3ca161_0"
  }
  parameter_meta {
    arg_somatic_somatic: "[ --filter ] arg (=somatic)        Filter mode (somatic, germline)"
    arg_filtered_file: "[ --outfile ] arg (=\\\"cnv.bcf\\\")     Filtered CNV BCF output file"
    arg_min_size: "[ --minsize ] arg (=1000)          min. CNV size"
    arg_max_size: "[ --maxsize ] arg (=500000000)     max. CNV size"
    filter_sites_pass: "[ --pass ]                         Filter sites for PASS"
    arg_twocolumn_sample: "[ --samples ] arg                  Two-column sample file listing sample\\nname and tumor or control"
    arg_probability_germline: "[ --pgerm ] arg (=0.00100000005)   probability germline"
    arg_min_cn: "[ --cn-offset ] arg (=0.200000003) min. CN offset"
    arg_baseline_ploidy: "[ --ploidy ] arg (=2)              baseline ploidy"
    arg_min_site: "[ --qual ] arg (=50)               min. site quality"
    arg_max_population: "[ --maxsd ] arg (=0.150000006)     max. population SD"
    input_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_filtered_file = "${in_arg_filtered_file}"
  }
}
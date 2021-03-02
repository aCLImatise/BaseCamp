version 1.0

task Logcombiner {
  input {
    File? log
    File? specify_log_file
    Int? specify_number_percentage
    Directory? dir
    Int? specify_number_is
    Int? resample
    Boolean? decimal
    Boolean? re_number
    String? options
  }
  command <<<
    logcombiner \
      ~{options} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(specify_log_file) then ("-o " +  '"' + specify_log_file + '"') else ""} \
      ~{if defined(specify_number_percentage) then ("-b " +  '"' + specify_number_percentage + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(specify_number_is) then ("-n " +  '"' + specify_number_is + '"') else ""} \
      ~{if defined(resample) then ("-resample " +  '"' + resample + '"') else ""} \
      ~{if (decimal) then "-decimal" else ""} \
      ~{if (re_number) then "-renumber" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0"
  }
  parameter_meta {
    log: "specify the name of the log file, each log file must be specified with separate -log option"
    specify_log_file: "specify log file to write into (default output is stdout)"
    specify_number_percentage: "specify the number PERCENTAGE of lines in the log file considered to be burnin (default 10)"
    dir: "specify particle directory -- used for particle filtering in BEASTLabs only -- if defined only one log must be specified and the -n option specified"
    specify_number_is: "specify the number of particles, ignored if -dir is not defined"
    resample: "specify number of states to resample"
    decimal: "flag to indicate numbers should converted from scientific into decimal format"
    re_number: "flag to indicate output states should be renumbered"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_log_file = "${in_specify_log_file}"
  }
}
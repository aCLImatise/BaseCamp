version 1.0

task GetDistributionpl {
  input {
    Int? specify_distribution_mode
    Boolean? inputs_gtf_files
    Boolean? quick_load_file
    Boolean? more_options
    Boolean? options
  }
  command <<<
    get_distribution_pl \
      ~{if defined(specify_distribution_mode) then ("-m " +  '"' + specify_distribution_mode + '"') else ""} \
      ~{if (inputs_gtf_files) then "-g" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    specify_distribution_mode: ": Specify distribution mode.  Must be a number selected from the\\nlist below.  Default is mode 1."
    inputs_gtf_files: ": Inputs are gtf files instead of list files"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
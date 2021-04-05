version 1.0

task PoppunkEasyRunpy {
  input {
    String? r_files
    String? prefix_output_files
    Int? analysis_args
    Boolean? viz
    String? viz_args
    String? pop_punk_exe
    String? viz_exe
    String easy_run
  }
  command <<<
    poppunk_easy_run_py \
      ~{easy_run} \
      ~{if defined(r_files) then ("--r-files " +  '"' + r_files + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(analysis_args) then ("--analysis-args " +  '"' + analysis_args + '"') else ""} \
      ~{if (viz) then "--viz" else ""} \
      ~{if defined(viz_args) then ("--viz-args " +  '"' + viz_args + '"') else ""} \
      ~{if defined(pop_punk_exe) then ("--poppunk-exe " +  '"' + pop_punk_exe + '"') else ""} \
      ~{if defined(viz_exe) then ("--viz-exe " +  '"' + viz_exe + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    r_files: "List of sequence names and files (as for --r-files)"
    prefix_output_files: "Prefix for output files"
    analysis_args: "Other arguments to pass to poppunk. e.g. '--min-k 13\\n--max-k 29'"
    viz: "Run visualisation of output"
    viz_args: "Options to use for visualisation"
    pop_punk_exe: "Location of poppunk executable. Use 'python poppunk-\\nrunner.py' to run from source tree"
    viz_exe: "Location of poppunk_visualisation executable"
    easy_run: ""
  }
  output {
    File out_stdout = stdout()
  }
}
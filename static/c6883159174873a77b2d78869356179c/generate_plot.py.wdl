version 1.0

task GeneratePlotpy {
  input {
    File? define_location_working
    String? run_type
    Boolean? no_r
    Boolean? quiet
    String? var_4
    String? other
  }
  command <<<
    generate_plot_py \
      ~{var_4} \
      ~{other} \
      ~{if defined(define_location_working) then ("--working_directory " +  '"' + define_location_working + '"') else ""} \
      ~{if defined(run_type) then ("--run_type " +  '"' + run_type + '"') else ""} \
      ~{if (no_r) then "--no_r" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    define_location_working: "Define the location of your working directory"
    run_type: "type of summary to use, `generic` or `specific`"
    no_r: "To avoid to run R. It will just create the R script file in the working directory"
    quiet: "Disable the info logs, displays only errors"
    var_4: ""
    other: ""
  }
  output {
    File out_stdout = stdout()
  }
}
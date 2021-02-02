version 1.0

task MakeBootstrapspy {
  input {
    Int? number_simulated_datasets
    Int? template
    File? path
    String make
    String counts_file
    String var_5
    String simulated
    String datasets
    String used
    String to
    String get
    String pseudo
    String p_values_dot
  }
  command <<<
    MakeBootstraps_py \
      ~{make} \
      ~{counts_file} \
      ~{var_5} \
      ~{simulated} \
      ~{datasets} \
      ~{used} \
      ~{to} \
      ~{get} \
      ~{pseudo} \
      ~{p_values_dot} \
      ~{if defined(number_simulated_datasets) then ("-n " +  '"' + number_simulated_datasets + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    number_simulated_datasets: "Number of simulated datasets to create (100 default)."
    template: "The template for the permuted data file names. Should\\nnot include the path, which is specified using the -p\\noption. The iteration number is indicated with a \\\"#\\\".\\nFor example: 'permuted/counts.permuted_#.txt'If not\\nprovided a '.permuted_#.txt' suffix will be added to\\nthe counts file name."
    path: "The path to which permuted data will be written. If\\nnot provided files will be written to the cwd.\\n"
    make: ""
    counts_file: ""
    var_5: ""
    simulated: ""
    datasets: ""
    used: ""
    to: ""
    get: ""
    pseudo: ""
    p_values_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_path = "${in_path}"
  }
}
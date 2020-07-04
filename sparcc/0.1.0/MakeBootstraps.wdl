version 1.0

task MakeBootstraps.py {
  input {
    String? number_create_default
    String? template
    String? path
    String make
    String var_4
    String simulated
    String datasets
    String used
    String to
    String get
    String pseudo
    String p_values_dot
  }
  command <<<
    MakeBootstraps.py \
      ~{make} \
      ~{var_4} \
      ~{simulated} \
      ~{datasets} \
      ~{used} \
      ~{to} \
      ~{get} \
      ~{pseudo} \
      ~{p_values_dot} \
      ~{if defined(number_create_default) then ("-n " +  '"' + number_create_default + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    number_create_default: "Number of simulated datasets to create (100 default)."
    template: "The template for the permuted data file names. Should not include the path, which is specified using the -p option. The iteration number is indicated with a \"#\". For example: 'permuted/counts.permuted_#.txt'If not provided a '.permuted_#.txt' suffix will be added to the counts file name."
    path: "The path to which permuted data will be written. If not provided files will be written to the cwd."
    make: ""
    var_4: ""
    simulated: ""
    datasets: ""
    used: ""
    to: ""
    get: ""
    pseudo: ""
    p_values_dot: ""
  }
}
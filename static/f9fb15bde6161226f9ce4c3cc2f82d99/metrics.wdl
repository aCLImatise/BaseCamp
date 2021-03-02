version 1.0

task Metrics {
  input {
    String? prefix_output_wig
    Int? manually_specify_number
    Int? number_threads_use
    Boolean? h
    String manually
    Int var_5
    String prefix
    String show
    String maf_file
    File path
    String for
    String specify
    String this
    String var_output
    String the
    String threads
    String to
    String a
    Int var_18
    String wig
    String maf
    String files
    String of
    String use
    String assemblies
    String in
    String alignment
  }
  command <<<
    metrics \
      ~{manually} \
      ~{var_5} \
      ~{prefix} \
      ~{show} \
      ~{maf_file} \
      ~{path} \
      ~{for} \
      ~{specify} \
      ~{this} \
      ~{var_output} \
      ~{the} \
      ~{threads} \
      ~{to} \
      ~{a} \
      ~{var_18} \
      ~{wig} \
      ~{maf} \
      ~{files} \
      ~{of} \
      ~{use} \
      ~{assemblies} \
      ~{in} \
      ~{alignment} \
      ~{if defined(prefix_output_wig) then ("-p " +  '"' + prefix_output_wig + '"') else ""} \
      ~{if defined(manually_specify_number) then ("-n " +  '"' + manually_specify_number + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if (h) then "-h" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix_output_wig: "Prefix for output wig files [default: metrics]"
    manually_specify_number: "Manually specify the number of assemblies in the alignment; if not, it is computed from the MAF [default: 0]"
    number_threads_use: "Number of threads to use [default: 1]."
    h: ""
    manually: ""
    var_5: ""
    prefix: ""
    show: ""
    maf_file: ""
    path: ""
    for: ""
    specify: ""
    this: ""
    var_output: ""
    the: ""
    threads: ""
    to: ""
    a: ""
    var_18: ""
    wig: ""
    maf: ""
    files: ""
    of: ""
    use: ""
    assemblies: ""
    in: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}
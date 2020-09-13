version 1.0

task BcftoolsPlugin {
  input {
    String? exclude
    String? include
    String? regions
    File? regions_file
    String? targets
    File? targets_file
    Boolean? no_version
    File? write_output_file
    String? output_type
    Int? threads
    Boolean? list_plugins
    Boolean? verbose
    String name
    File file
  }
  command <<<
    bcftools plugin \
      ~{name} \
      ~{file} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (list_plugins) then "--list-plugins" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    exclude: "exclude sites for which the expression is true"
    include: "select sites for which the expression is true"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed VCF [v]"
    threads: "use multithreading with <int> worker threads [0]"
    list_plugins: "list available plugins. See BCFTOOLS_PLUGINS environment variable and man page for details"
    verbose: "print verbose information, -vv increases verbosity"
    name: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
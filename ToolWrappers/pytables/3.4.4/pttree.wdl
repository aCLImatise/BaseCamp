version 1.0

task Pttree {
  input {
    Int? max_level
    Int? sort_by
    Boolean? print_size
    Boolean? no_print_size
    Boolean? print_shape
    Boolean? no_print_shape
    Boolean? print_compression
    Boolean? print_percent
    Boolean? no_print_percent
    Boolean? use_si_units
    Boolean? use_binary_units
    String node
  }
  command <<<
    pttree \
      ~{node} \
      ~{if defined(max_level) then ("--max-level " +  '"' + max_level + '"') else ""} \
      ~{if defined(sort_by) then ("--sort-by " +  '"' + sort_by + '"') else ""} \
      ~{if (print_size) then "--print-size" else ""} \
      ~{if (no_print_size) then "--no-print-size" else ""} \
      ~{if (print_shape) then "--print-shape" else ""} \
      ~{if (no_print_shape) then "--no-print-shape" else ""} \
      ~{if (print_compression) then "--print-compression" else ""} \
      ~{if (print_percent) then "--print-percent" else ""} \
      ~{if (no_print_percent) then "--no-print-percent" else ""} \
      ~{if (use_si_units) then "--use-si-units" else ""} \
      ~{if (use_binary_units) then "--use-binary-units" else ""}
  >>>
  parameter_meta {
    max_level: "maximum branch depth of tree to display (-1 == no\\nlimit)"
    sort_by: "artificially order nodes, can be either \\\"size\\\", \\\"name\\\"\\nor \\\"none\\\""
    print_size: "print size of each node/branch"
    no_print_size: ""
    print_shape: "print shape of each node"
    no_print_shape: ""
    print_compression: "print compression library(level) for each compressed"
    print_percent: "print size of each node as a % of the total tree size\\non disk"
    no_print_percent: ""
    use_si_units: "report sizes in SI units (1 MB == 10^6 B)"
    use_binary_units: "report sizes in binary units (1 MiB == 2^20 B)"
    node: "--no-print-compression"
  }
  output {
    File out_stdout = stdout()
  }
}
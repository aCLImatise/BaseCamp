version 1.0

task MetagraphDNAServerQuery {
  input {
    Boolean? port
    Boolean? address
    Boolean? sparse
    Boolean? parallel
    Boolean? verbose
    String? a
    String? i
  }
  command <<<
    metagraph_DNA server_query \
      ~{if (port) then "--port" else ""} \
      ~{if (address) then "--address" else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    port: "[INT]         TCP port for incoming connections [5555]"
    address: "interface for incoming connections (default: all)"
    sparse: "use the row-major sparse matrix to annotate graph [off]"
    parallel: "[INT]     maximum number of parallel connections [1]"
    verbose: "switch on verbose output [off]"
    a: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}
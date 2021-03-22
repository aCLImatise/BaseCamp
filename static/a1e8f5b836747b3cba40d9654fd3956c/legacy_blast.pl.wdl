version 1.0

task LegacyBlastpl {
  input {
    Boolean? path
    Boolean? print_only
  }
  command <<<
    legacy_blast_pl \
      ~{if (path) then "--path" else ""} \
      ~{if (print_only) then "--print_only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0"
  }
  parameter_meta {
    path: "Use the provided path as the location of the BLAST binaries to\\nexecute/print (default: /usr/bin)."
    print_only: "Print the equivalent command line option instead of running the\\ncommand (default: false)."
  }
  output {
    File out_stdout = stdout()
  }
}
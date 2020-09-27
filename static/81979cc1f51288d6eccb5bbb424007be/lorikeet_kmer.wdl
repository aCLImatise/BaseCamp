version 1.0

task LorikeetKmer {
  input {
    Boolean? full_help
    String? flags
  }
  command <<<
    lorikeet kmer \
      ~{flags} \
      ~{if (full_help) then "--full-help" else ""}
  >>>
  parameter_meta {
    full_help: "-h, --help         Prints help information\\n-V, --version      Prints version information\\n-v, --verbose"
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}
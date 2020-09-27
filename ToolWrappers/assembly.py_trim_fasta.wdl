version 1.0

task AssemblypyTrimFasta {
  input {
    String? loglevel
    String in_fasta
    String out_fast_a
  }
  command <<<
    assembly_py trim_fasta \
      ~{in_fasta} \
      ~{out_fast_a} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    loglevel: "Verboseness of output. [default: DEBUG]"
    in_fasta: "Input fasta file"
    out_fast_a: "Output (trimmed) fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}
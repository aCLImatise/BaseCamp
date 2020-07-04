version 1.0

task SonicparanoidSetMmseqs2 {
  input {
    String? mm_seqs_path
    Boolean? debug
    String? o
  }
  command <<<
    sonicparanoid-set-mmseqs2 \
      ~{if defined(mm_seqs_path) then ("--mmseqs-path " +  '"' + mm_seqs_path + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    mm_seqs_path: "The path to the MMseqs2 binary file."
    debug: "Output debug information."
    o: ""
  }
}
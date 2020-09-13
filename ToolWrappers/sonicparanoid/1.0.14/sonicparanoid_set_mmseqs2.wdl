version 1.0

task Sonicparanoidsetmmseqs2 {
  input {
    File? mm_seqs_path
    Boolean? debug
    File? o
  }
  command <<<
    sonicparanoid_set_mmseqs2 \
      ~{if defined(mm_seqs_path) then ("--mmseqs-path " +  '"' + mm_seqs_path + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    mm_seqs_path: "The path to the MMseqs2 binary file."
    debug: "Output debug information."
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}
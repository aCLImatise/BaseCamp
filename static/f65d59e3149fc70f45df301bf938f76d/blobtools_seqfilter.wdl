version 1.0

task BlobtoolsSeqfilter {
  input {
    File? in_file
    File? list
    String? out
    Boolean? invert
  }
  command <<<
    blobtools seqfilter \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (invert) then "--invert" else ""}
  >>>
  parameter_meta {
    in_file: "FASTA file of sequences (Headers are split at whitespaces)"
    list: "TXT file containing headers of sequences to keep"
    out: "Output prefix"
    invert: "Invert filtering (Sequences w/ headers NOT in list)"
  }
  output {
    File out_stdout = stdout()
  }
}
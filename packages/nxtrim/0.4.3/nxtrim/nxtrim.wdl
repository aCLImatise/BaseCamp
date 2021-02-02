version 1.0

task Nxtrim {
  input {
    Boolean? one
    Boolean? two
    Boolean? arg_output_prefix
    Boolean? just_mp
    Boolean? stdout
    Boolean? stdout_mp
    Boolean? stdout_un
    Boolean? rf
    Boolean? preserve_mp
    Boolean? ignore_pf
    Boolean? separate
    Boolean? aggressive
    Int? similarity
    Int? min_overlap
    Int? minlength
  }
  command <<<
    nxtrim \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (arg_output_prefix) then "-O" else ""} \
      ~{if (just_mp) then "--justmp" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (stdout_mp) then "--stdout-mp" else ""} \
      ~{if (stdout_un) then "--stdout-un" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if (preserve_mp) then "--preserve-mp" else ""} \
      ~{if (ignore_pf) then "--ignorePF" else ""} \
      ~{if (separate) then "--separate" else ""} \
      ~{if (aggressive) then "--aggressive" else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(min_overlap) then ("--minoverlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""}
  >>>
  parameter_meta {
    one: "[ --r1 ] arg                 read 1 in fastq format (gzip allowed)"
    two: "[ --r2 ] arg                 read 2 in fastq format (gzip allowed)"
    arg_output_prefix: "[ --output-prefix ] arg      output prefix"
    just_mp: "just creates a the mp/unknown libraries (reads with adapter at the start will be completely N masked)"
    stdout: "print trimmed reads to stdout (equivalent to justmp)"
    stdout_mp: "print only known MP reads to stdout (good for scaffolding)"
    stdout_un: "print only unknown reads to stdout"
    rf: "leave mate pair reads in RF orientation [by default are flipped into FR]"
    preserve_mp: "preserve MPs even when the corresponding PE has longer reads"
    ignore_pf: "ignore chastity/purity filters in read headers"
    separate: "output paired reads in separate files (prefix_R1/prefix_r2). Default is interleaved."
    aggressive: "more aggressive adapter search (see docs/adapter.md)"
    similarity: "(=0.85)    The minimum similarity between strings to be considered a match (Hamming distance divided by string length)"
    min_overlap: "(=12)      The minimum overlap to be considered for matching"
    minlength: "(=21)      The minimum read length to output (smaller reads will be filtered)"
  }
  output {
    File out_stdout = stdout()
  }
}
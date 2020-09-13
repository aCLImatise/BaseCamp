version 1.0

task RawN50 {
  input {
    Int? min_contig
    Int? ref_length
    String contigs_dot_fa
  }
  command <<<
    raw_n50 \
      ~{contigs_dot_fa} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(ref_length) then ("--ref_length " +  '"' + ref_length + '"') else ""}
  >>>
  parameter_meta {
    min_contig: "(=100)"
    ref_length: "(=0)"
    contigs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
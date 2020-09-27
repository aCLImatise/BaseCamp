version 1.0

task RMETLRealignment {
  input {
    Int? threads
    String? presets
    Int? sub_read_length
    Int? sub_read_corridor
    String t_jiang_at_hit_dot_edu_dot_cn
    String fast_a
    String me_ref
    String directory_output_realignments
  }
  command <<<
    rMETL realignment \
      ~{t_jiang_at_hit_dot_edu_dot_cn} \
      ~{fast_a} \
      ~{me_ref} \
      ~{directory_output_realignments} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(presets) then ("--presets " +  '"' + presets + '"') else ""} \
      ~{if defined(sub_read_length) then ("--subread_length " +  '"' + sub_read_length + '"') else ""} \
      ~{if defined(sub_read_corridor) then ("--subread_corridor " +  '"' + sub_read_corridor + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads to use.[8]"
    presets: "The sequencing platform <pacbio,ont> of the\\nreads.[pacbio]"
    sub_read_length: "Length of fragments reads are split into [128]"
    sub_read_corridor: "Length of corridor sub-reads are aligned with [20]\\n"
    t_jiang_at_hit_dot_edu_dot_cn: "positional arguments:"
    fast_a: "Input potential_ME.fa on STAGE detection."
    me_ref: "The transposable element concensus in fasta format."
    directory_output_realignments: "Directory to output realignments."
  }
  output {
    File out_stdout = stdout()
  }
}
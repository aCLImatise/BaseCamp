version 1.0

task FermiRemap {
  input {
    Int? skip_ending_bases
    Int? minimum_pairedend_coverage
    Int? maximum_insert_size
    File? rank
    Int? number_of_threads
    String reads_dot_fmd
    String contigs_dot_fq
  }
  command <<<
    fermi remap \
      ~{reads_dot_fmd} \
      ~{contigs_dot_fq} \
      ~{if defined(skip_ending_bases) then ("-l " +  '"' + skip_ending_bases + '"') else ""} \
      ~{if defined(minimum_pairedend_coverage) then ("-c " +  '"' + minimum_pairedend_coverage + '"') else ""} \
      ~{if defined(maximum_insert_size) then ("-D " +  '"' + maximum_insert_size + '"') else ""} \
      ~{if defined(rank) then ("-r " +  '"' + rank + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip_ending_bases: "skip ending INT bases of a read pair [0]"
    minimum_pairedend_coverage: "minimum paired-end coverage [0]"
    maximum_insert_size: "maximum insert size (external distance) [1000]"
    rank: "rank [null]"
    number_of_threads: "number of threads [1]"
    reads_dot_fmd: ""
    contigs_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}
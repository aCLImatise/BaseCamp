version 1.0

task SequenceSimulate {
  input {
    String? genome
    Boolean? circular
    Int? genome_size
    String? coverage
    String? n_reads
    String? n_bases
    Int? distribution
    Int? length
    String? not_implemented
    String sequence
    String? mode
    String? sequence_file
  }
  command <<<
    sequence simulate \
      ~{sequence} \
      ~{mode} \
      ~{sequence_file} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (circular) then "-circular" else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(n_reads) then ("-nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(n_bases) then ("-nbases " +  '"' + n_bases + '"') else ""} \
      ~{if defined(distribution) then ("-distribution " +  '"' + distribution + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(not_implemented) then ("-output " +  '"' + not_implemented + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "sample reads from these sequences"
    circular: "threat the sequences in G as circular"
    genome_size: "genome size to use for deciding coverage below"
    coverage: "generate approximately c coverage of output"
    n_reads: "generate exactly n reads of output"
    n_bases: "generate approximately n bases of output"
    distribution: "generate read length by sampling the distribution in file F\\none column  - each line is the length of a sequence\\ntwo columns - each line has the 'length' and 'number of sequences'"
    length: "[-max]   (not implemented)"
    not_implemented: "(not implemented)"
    sequence: ""
    mode: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
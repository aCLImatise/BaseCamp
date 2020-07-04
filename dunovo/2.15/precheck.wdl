version 1.0

task Precheck.py {
  input {
    Int? min_reads
    Boolean? validate
    Boolean? no_check_ids
    String reads_one_dot_fq
    String reads_two_dot_fq
  }
  command <<<
    precheck.py \
      ~{reads_one_dot_fq} \
      ~{reads_two_dot_fq} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{true="--validate" false="" validate} \
      ~{true="--no-check-ids" false="" no_check_ids}
  >>>
  parameter_meta {
    min_reads: "The minimum number of reads required in each single- stranded family. Default: 3"
    validate: "Check the id's of the reads to make sure the correct reads are mated into pairs (the id's of mates must be identical). Default: False."
    no_check_ids: "Don't check read ids."
    reads_one_dot_fq: "The first mates in the read pairs."
    reads_two_dot_fq: "The second mates in the read pairs."
  }
}
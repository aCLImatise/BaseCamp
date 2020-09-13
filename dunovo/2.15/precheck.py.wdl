version 1.0

task Precheckpy {
  input {
    String? families
    Int? tag_length
    Int? constant_length
    Int? min_reads
    Boolean? validate
    Boolean? no_check_ids
    Int reads_one_dot_fq
    Int reads_two_dot_fq
  }
  command <<<
    precheck_py \
      ~{reads_one_dot_fq} \
      ~{reads_two_dot_fq} \
      ~{if defined(families) then ("--families " +  '"' + families + '"') else ""} \
      ~{if defined(tag_length) then ("--tag-length " +  '"' + tag_length + '"') else ""} \
      ~{if defined(constant_length) then ("--constant-length " +  '"' + constant_length + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if (validate) then "--validate" else ""} \
      ~{if (no_check_ids) then "--no-check-ids" else ""}
  >>>
  parameter_meta {
    families: "The output of make-families.awk."
    tag_length: ""
    constant_length: ""
    min_reads: "The minimum number of reads required in each single-\\nstranded family. Default: 3"
    validate: "Check the id's of the reads to make sure the correct\\nreads are mated into pairs (the id's of mates must be\\nidentical). Default: False."
    no_check_ids: "Don't check read ids."
    reads_one_dot_fq: "The first mates in the read pairs."
    reads_two_dot_fq: "The second mates in the read pairs."
  }
  output {
    File out_stdout = stdout()
  }
}
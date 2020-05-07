version 1.0

task FastqJoin {
  input {
    String oO
    String? readRead1fq
    String? readRead2fq
    String? mateMateFq
  }
  command <<<
    fastq-join \
      ~{readRead1fq} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{readRead2fq} \
      ~{mateMateFq}
  >>>
}
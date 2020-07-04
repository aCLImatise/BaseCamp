version 1.0

task BamUniq.pl {
  input {
    Boolean? bam
    Boolean? band
    Boolean? out
    Boolean? man
  }
  command <<<
    bam_uniq.pl \
      ~{true="--bam" false="" bam} \
      ~{true="--band" false="" band} \
      ~{true="--out" false="" out} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    bam: "BAM file to extract unique and multi mappers from"
    band: "Process bands of (supposedly paired-end) reads sharing the same name/id from a name-sorted BAM file. The reads of band are considered unique mappers if and only if all of them are unique mappers. In all other cases, all reads of a band are considered multi mappers. In a paired-end context this means that e.g. a read map uniquely, but its mate is a multi-mapper, both will be consideres multi-mappers."
    out: "Output path"
    man: "Prints the manual page and exits"
  }
}
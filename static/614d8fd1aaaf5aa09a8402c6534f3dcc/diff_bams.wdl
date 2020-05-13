version 1.0

task DiffBams.pl {
  input {
    Boolean bamBamA
    Boolean bamBamB
    Boolean refRef
    Boolean countCount
    Boolean skipSkipZ
    Boolean manMan
    Boolean bamBamA
    Boolean bamBamB
    Boolean skipSkipZ
    Boolean manMan
  }
  command <<<
    diff_bams.pl \
      ~{true="-bam_a" false="" bamBamA} \
      ~{true="-bam_b" false="" bamBamB} \
      ~{true="-ref" false="" refRef} \
      ~{true="-count" false="" countCount} \
      ~{true="-skipz" false="" skipSkipZ} \
      ~{true="-man" false="" manMan} \
      ~{true="-bam_a" false="" bamBamA} \
      ~{true="-bam_b" false="" bamBamB} \
      ~{true="-skipz" false="" skipSkipZ} \
      ~{true="-man" false="" manMan}
  >>>
}
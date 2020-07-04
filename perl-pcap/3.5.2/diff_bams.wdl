version 1.0

task DiffBams.pl {
  input {
    Boolean? bam_a
    Boolean? bam_b
    Boolean? ref
    Boolean? count
    Boolean? skip_z
    Boolean? man
    String? a
    String? b
  }
  command <<<
    diff_bams.pl \
      ~{true="-bam_a" false="" bam_a} \
      ~{true="-bam_b" false="" bam_b} \
      ~{true="-ref" false="" ref} \
      ~{true="-count" false="" count} \
      ~{true="-skipz" false="" skip_z} \
      ~{true="-man" false="" man} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    bam_a: "-a    The first BAM|CRAM file."
    bam_b: "-b    The second BAM|CRAM file."
    ref: "-r    Required for CRAM, genome.fa with co-located fai."
    count: "-c    Count flag differences"
    skip_z: "-s    Don't include reads with MAPQ=0 in comparison"
    man: "-m    Full documentation."
    a: ""
    b: ""
  }
}
version 1.0

task FragSim {
  input {
    Boolean? _fragments_default
    Boolean? comp
    Boolean? dist
    Boolean? norev
    Boolean? case
    Boolean? write_output_bam
    Boolean? write_output_zipped
    Boolean? produce_uncompressed_bam
    Boolean? tag
    Boolean? tmp
    Boolean? uniq
    Boolean? minimum_fragments_length
    Boolean? maximum_fragments_length
    Boolean? loc
    Boolean? scale
    Boolean? gc
  }
  command <<<
    fragSim \
      ~{true="-n" false="" _fragments_default} \
      ~{true="--comp" false="" comp} \
      ~{true="--dist" false="" dist} \
      ~{true="--norev" false="" norev} \
      ~{true="--case" false="" case} \
      ~{true="-b" false="" write_output_bam} \
      ~{true="-o" false="" write_output_zipped} \
      ~{true="-u" false="" produce_uncompressed_bam} \
      ~{true="-tag" false="" tag} \
      ~{true="-tmp" false="" tmp} \
      ~{true="-uniq" false="" uniq} \
      ~{true="-m" false="" minimum_fragments_length} \
      ~{true="-M" false="" maximum_fragments_length} \
      ~{true="--loc" false="" loc} \
      ~{true="--scale" false="" scale} \
      ~{true="-gc" false="" gc}
  >>>
  parameter_meta {
    _fragments_default: "[number]                        Generate [number] fragments (default: 10)"
    comp: "[file]                          Base composition for the fragments (default none)"
    dist: "[file]                          Distance from ends to consider  (default: 1) if this is not specified, the base composition will only reflect the chromosome file used"
    norev: "Do not reverse complement (default: rev. comp half of seqs.)"
    case: "Do not set the sequence to upper-case (default: uppercase the seqs.)"
    write_output_bam: "[bam out]                       Write output as a BAM file (default: fasta in stdout)"
    write_output_zipped: "[fasta out]                     Write output as a zipped fasta (default: fasta in stdout)"
    produce_uncompressed_bam: "Produce uncompressed BAM (good for unix pipe)"
    tag: "[tag]                           Append this string to deflines or BAM tags (Default:  not on/not used)"
    tmp: "[tmp dir]                       Use this directory as the temporary dir for zipped files (default:  /tmp/)"
    uniq: "Make sure that the fragment names are unique by appending a suffix (default:  not on/not used) note: this might not be practical for large datasets"
    minimum_fragments_length: "[length]                        Minimum fragments length < (default: 0)"
    maximum_fragments_length: "[length]                        Maximum fragments length > (default: 1000)"
    loc: "[file]                  Location for lognormal distribution (default none)"
    scale: "[file]                  Scale for lognormal distribution      (default none)"
    gc: "[gc bias]                       Use GC bias factor  (default: 0)"
  }
}
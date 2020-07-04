version 1.0

task BcftoolsIndex {
  input {
    Boolean? csi
    Boolean? force
    Int? min_shift
    File? output_file
    Boolean? tbi
    Int? threads
    Boolean? n_records
    Boolean? stats
    String in_dot_bcf
  }
  command <<<
    bcftools index \
      ~{in_dot_bcf} \
      ~{true="--csi" false="" csi} \
      ~{true="--force" false="" force} \
      ~{if defined(min_shift) then ("--min-shift " +  '"' + min_shift + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--tbi" false="" tbi} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--nrecords" false="" n_records} \
      ~{true="--stats" false="" stats}
  >>>
  parameter_meta {
    csi: "generate CSI-format index for VCF/BCF files [default]"
    force: "overwrite index if it already exists"
    min_shift: "set minimal interval size for CSI indices to 2^INT [14]"
    output_file: "optional output index file name"
    tbi: "generate TBI-format index for VCF files"
    threads: "use multithreading with INT worker threads [0]"
    n_records: "print number of records based on existing index file"
    stats: "print per contig stats based on existing index file"
    in_dot_bcf: ""
  }
}
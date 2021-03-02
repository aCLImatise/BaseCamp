version 1.0

task BcftoolsIndex {
  input {
    Boolean? csi
    Boolean? force
    Int? min_shift
    File? optional_output_index
    Boolean? tbi
    Int? threads
    Boolean? n_records
    Boolean? stats
    String in_dot_bcf
  }
  command <<<
    bcftools index \
      ~{in_dot_bcf} \
      ~{if (csi) then "--csi" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(min_shift) then ("--min-shift " +  '"' + min_shift + '"') else ""} \
      ~{if defined(optional_output_index) then ("--output " +  '"' + optional_output_index + '"') else ""} \
      ~{if (tbi) then "--tbi" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (n_records) then "--nrecords" else ""} \
      ~{if (stats) then "--stats" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    csi: "generate CSI-format index for VCF/BCF files [default]"
    force: "overwrite index if it already exists"
    min_shift: "set minimal interval size for CSI indices to 2^INT [14]"
    optional_output_index: "optional output index file name"
    tbi: "generate TBI-format index for VCF files"
    threads: "use multithreading with INT worker threads [0]"
    n_records: "print number of records based on existing index file"
    stats: "print per contig stats based on existing index file"
    in_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_optional_output_index = "${in_optional_output_index}"
  }
}
version 1.0

task Bamaddrg {
  input {
    File? bam
    String? uncompressed
    File? sample
    String? delete
    Boolean? clear
    File? read_group
    String? region
  }
  command <<<
    bamaddrg \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(uncompressed) then ("--uncompressed " +  '"' + uncompressed + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(delete) then ("--delete " +  '"' + delete + '"') else ""} \
      ~{if (clear) then "--clear" else ""} \
      ~{if defined(read_group) then ("--read-group " +  '"' + read_group + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamaddrg:9baba65f88228e55639689a3cea38dd150e6284f--h970fe44_0"
  }
  parameter_meta {
    bam: "use this BAM as input"
    uncompressed: "uncompressed BAM output"
    sample: "optionally apply this sample name to the preceeding BAM file"
    delete: "removes this sample name and all associated RGs from the header"
    clear: "removes all RGs which were in the old file"
    read_group: "optionally apply this read group to the preceeding BAM file"
    region: "limit alignments to those in this region (chr:start..end)"
  }
  output {
    File out_stdout = stdout()
  }
}
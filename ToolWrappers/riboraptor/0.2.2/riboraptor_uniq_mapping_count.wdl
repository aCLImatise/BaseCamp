version 1.0

task RiboraptorUniqmappingcount {
  input {
    File? bam
  }
  command <<<
    riboraptor uniq_mapping_count \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""}
  >>>
  parameter_meta {
    bam: "Path to BAM file  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}
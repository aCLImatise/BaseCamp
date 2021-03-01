version 1.0

task VerifyMappingQualitypl {
  input {
    Boolean? bam
    Boolean? min_depth
    Boolean? min_map
    Boolean? cores
    Boolean? path_write_report
    Boolean? out_strains
  }
  command <<<
    verify_mapping_quality_pl \
      ~{if (bam) then "--bam" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (min_map) then "--min-map" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (path_write_report) then "--output" else ""} \
      ~{if (out_strains) then "--out_strains" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "[REQUIRED]\\nThe location for a specific BAM file in the dataset. Multiple BAM\\nfiles can be input. Example with 3 BAM files: --bam\\nbam1=/path/bam1.bam --bam bam2=/path/bam2.bam --bam\\nbam3=/path/bam3.bam"
    min_depth: "[optional]\\nThe minimum depth of coverage required at each genome position to be\\nconsidered mapped. Default value is 15x."
    min_map: "[optional]\\nThe minimum percent mapped to reference for each strain, pipeline\\nwill log all strains that do not meet this minimum percentage.\\nDefault value is 80%."
    cores: "[optional]\\nThe number of CPU cores that should be used for the calculations."
    path_write_report: "Path to write human readable report"
    out_strains: "Path to write list of strain(s) one per line for filter File\\ncollection tool or vcf2snvalignment itself"
  }
  output {
    File out_stdout = stdout()
  }
}
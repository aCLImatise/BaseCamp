version 1.0

task VerifyMappingQualitypl {
  input {
    Int? min_depth
    Boolean? bam
    Boolean? cores
    Boolean? path_write_report
    Boolean? out_strains
  }
  command <<<
    verify_mapping_quality_pl \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (path_write_report) then "--output" else ""} \
      ~{if (out_strains) then "--out_strains" else ""}
  >>>
  parameter_meta {
    min_depth: ""
    bam: "[REQUIRED]\\nThe location for a specific BAM file in the dataset. Multiple BAM\\nfiles can be input. Example with 3 BAM files: --bam\\nbam1=/path/bam1.bam --bam bam2=/path/bam2.bam --bam\\nbam3=/path/bam3.bam"
    cores: "[optional]\\nThe number of CPU cores that should be used for the calculations."
    path_write_report: "Path to write human readable report"
    out_strains: "Path to write list of strain(s) one per line for filter File\\ncollection tool or vcf2snvalignment itself"
  }
  output {
    File out_stdout = stdout()
  }
}
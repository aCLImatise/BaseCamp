version 1.0

task VerifyExcessCoveragepl {
  input {
    Boolean? bam
    Boolean? cores
    Boolean? max_dev
    String? num_cpu
    Int bam_one
    String? max_std_dev
  }
  command <<<
    verify_excess_coverage_pl \
      ~{num_cpu} \
      ~{bam_one} \
      ~{max_std_dev} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (max_dev) then "--max-dev" else ""}
  >>>
  parameter_meta {
    bam: "[REQUIRED]\\nThe location for a specific BAM file in the dataset. Multiple BAM\\nfiles can be input. Example with 3 BAM files:\\n--bam bam1=/path/bam1.bam --bam bam2=/path/bam2.bam --bam\\nbam3=/path/bam3.bam"
    cores: "[optional]\\nThe number of CPU cores that should be used for the calculations."
    max_dev: "[optional]\\nThe maximum number of standard deviations from the mean allowable\\nfor positions with a 'normal' depth of coverage."
    num_cpu: ""
    bam_one: ""
    max_std_dev: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task VerifyLowDepthpl {
  input {
    Boolean? bam
    Boolean? cores
    Boolean? maximum_depth_position
    String? num_cpu
    Int bam_one
    String? var_5
  }
  command <<<
    verify_low_depth_pl \
      ~{num_cpu} \
      ~{bam_one} \
      ~{var_5} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (maximum_depth_position) then "--max-depth" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "[REQUIRED]\\nThe location for a specific BAM file in the dataset. Multiple BAM\\nfiles can be input. Example with 3 BAM files:\\n--bam bam1=/path/bam1.bam --bam bam2=/path/bam2.bam --bam\\nbam3=/path/bam3.bam"
    cores: "[optional]\\nThe number of CPU cores that should be used for the calculations."
    maximum_depth_position: "[optional]\\nThe maximum depth for a position that is considered to have a 'low'\\ndepth of coverage."
    num_cpu: ""
    bam_one: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
  }
}
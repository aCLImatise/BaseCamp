version 1.0

task SplashTurnover {
  input {
    File? bed
    Int? min_half_life
    Int? max_half_life
    Directory? output_dir
  }
  command <<<
    splash turnover \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(min_half_life) then ("--min-halflife " +  '"' + min_half_life + '"') else ""} \
      ~{if defined(max_half_life) then ("--max-halflife " +  '"' + max_half_life + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    bed: "BED file"
    min_half_life: "Lower bound for the simulated half lifes in minutes"
    max_half_life: "Upper bound for the simulated half lifes in minutes"
    output_dir: "Output directory for mapped BAM files.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
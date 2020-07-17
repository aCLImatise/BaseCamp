version 1.0

task BiopetBasecounter {
  input {
    String? log_level
    File? ref_flat
    Directory? output_dir
    File? bam
    String? prefix
    String base_counter
  }
  command <<<
    biopet-basecounter \
      ~{base_counter} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(ref_flat) then ("--refFlat " +  '"' + ref_flat + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    ref_flat: "refFlat file. Mandatory"
    output_dir: "Output directory. Mandatory"
    bam: "Bam file. Mandatory"
    prefix: "The prefix for the output files"
    base_counter: ""
  }
}
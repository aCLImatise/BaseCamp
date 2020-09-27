version 1.0

task CalcProbeHitFromSampy {
  input {
    String? start_base
    Boolean? gtf
    String? end_base
    File? output_filename_default
    String sam_or_gtf
  }
  command <<<
    calc_probe_hit_from_sam_py \
      ~{sam_or_gtf} \
      ~{if defined(start_base) then ("--start_base " +  '"' + start_base + '"') else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if defined(end_base) then ("--end_base " +  '"' + end_base + '"') else ""} \
      ~{if defined(output_filename_default) then ("--output " +  '"' + output_filename_default + '"') else ""}
  >>>
  parameter_meta {
    start_base: "--end_base {0,1}\\n[-o OUTPUT]\\nbed_filename\\ninput_fasta_or_fastq\\nsam_or_gtf"
    gtf: "Input is GTF instead of SAM"
    end_base: "End base is 0 or 1-based index"
    output_filename_default: "Output filename (default: stdout)\\n"
    sam_or_gtf: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_default = "${in_output_filename_default}"
  }
}
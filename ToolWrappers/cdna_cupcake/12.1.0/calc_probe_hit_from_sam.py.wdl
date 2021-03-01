version 1.0

task CalcProbeHitFromSampy {
  input {
    Boolean? gtf
    String? start_base
    String? end_base
    File? output_filename_default
    String var_4
    String positional_arguments
    String var_6
    String optional_arguments
  }
  command <<<
    calc_probe_hit_from_sam_py \
      ~{var_4} \
      ~{positional_arguments} \
      ~{var_6} \
      ~{optional_arguments} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if defined(start_base) then ("--start_base " +  '"' + start_base + '"') else ""} \
      ~{if defined(end_base) then ("--end_base " +  '"' + end_base + '"') else ""} \
      ~{if defined(output_filename_default) then ("--output " +  '"' + output_filename_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf: "Input is GTF instead of SAM"
    start_base: "Start base is 0 or 1-based index"
    end_base: "End base is 0 or 1-based index"
    output_filename_default: "Output filename (default: stdout)\\n"
    var_4: "input_fasta_or_fastq"
    positional_arguments: "positional arguments:"
    var_6: "input_fasta_or_fastq"
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_default = "${in_output_filename_default}"
  }
}
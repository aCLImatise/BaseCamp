version 1.0

task Cov2lrpl {
  input {
    String? amplicon_exon_based
    Int? adjust_mad_transforming
    String? sspecify_control_samples
    Float? failed_factor_individual
    File? take_file_gender
    Int? gender_testing_chry
    File? output_parameters_seqcfrozentxt
  }
  command <<<
    cov2lr_pl \
      ~{if defined(amplicon_exon_based) then ("-a " +  '"' + amplicon_exon_based + '"') else ""} \
      ~{if defined(adjust_mad_transforming) then ("-M " +  '"' + adjust_mad_transforming + '"') else ""} \
      ~{if defined(sspecify_control_samples) then ("-c " +  '"' + sspecify_control_samples + '"') else ""} \
      ~{if defined(failed_factor_individual) then ("-F " +  '"' + failed_factor_individual + '"') else ""} \
      ~{if defined(take_file_gender) then ("-G " +  '"' + take_file_gender + '"') else ""} \
      ~{if defined(gender_testing_chry) then ("-Y " +  '"' + gender_testing_chry + '"') else ""} \
      ~{if defined(output_parameters_seqcfrozentxt) then ("-Z " +  '"' + output_parameters_seqcfrozentxt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    amplicon_exon_based: "this is amplicon or exon based calling.  By default, it will aggregate at gene level."
    adjust_mad_transforming: "to adjust the MAD when transforming the distribution.  Default: no, or just simple linear function.\\nIf not sure, do not use this option.  It might have better performance when cohort size is over 30."
    sspecify_control_samples: "(s)\\nSpecify the control sample(s), if aplicable.  Multiple controls are allowed, which are separated by \\\":\\\""
    failed_factor_individual: "The failed factor for individual amplicons.  If (the 80th percentile of an amplicon depth)/(the global median depth)\\nis less than the argument, the amplicon is considered failed and will not be used in calculation.  Default: 0.2."
    take_file_gender: "Take a file of gender information.  Two columns, first is sample name, second is either M or F.  If not provided,\\nthe program will try to guess."
    gender_testing_chry: "For gender testing, if chrY is designed.  Default: 0.15.  If chrY is carefully designed, such as Foundation's assay,\\ndefault is good.  For exome, the number should be higher, such as 0.3."
    output_parameters_seqcfrozentxt: "to output the frozen_file and all parameters into file Seq2C.frozen.txt"
  }
  output {
    File out_stdout = stdout()
    File out_output_parameters_seqcfrozentxt = "${in_output_parameters_seqcfrozentxt}"
  }
}
version 1.0

task Cov2lrpl {
  input {
    Int? amplicon_exon_based
  }
  command <<<
    cov2lr_pl \
      ~{if defined(amplicon_exon_based) then ("-a " +  '"' + amplicon_exon_based + '"') else ""}
  >>>
  parameter_meta {
    amplicon_exon_based: "this is amplicon or exon based calling.  By default, it will aggregate at gene level.\\n-M Indicate to adjust the MAD when transforming the distribution.  Default: no, or just simple linear function.\\nIf not sure, do not use this option.  It might have better performance when cohort size is over 30.\\n-c sample(s)\\nSpecify the control sample(s), if aplicable.  Multiple controls are allowed, which are separated by \\\":\\\"\\n-F double\\nThe failed factor for individual amplicons.  If (the 80th percentile of an amplicon depth)/(the global median depth)\\nis less than the argument, the amplicon is considered failed and will not be used in calculation.  Default: 0.2.\\n-G Gender\\nTake a file of gender information.  Two columns, first is sample name, second is either M or F.  If not provided,\\nthe program will try to guess.\\n-Y chrYratio\\nFor gender testing, if chrY is designed.  Default: 0.15.  If chrY is carefully designed, such as Foundation's assay,\\ndefault is good.  For exome, the number should be higher, such as 0.3.\\n-Z Indicate to output the frozen_file and all parameters into file Seq2C.frozen.txt\\n-z frozen_file"
  }
  output {
    File out_stdout = stdout()
  }
}
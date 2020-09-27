version 1.0

task FilterWithMicrobesAndRemappingpl {
  input {
    Int? bam
  }
  command <<<
    filter_with_microbes_and_remapping_pl \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""}
  >>>
  parameter_meta {
    bam: "required at /usr/local/bin/filter_with_microbes_and_remapping.pl line 113."
  }
  output {
    File out_stdout = stdout()
  }
}
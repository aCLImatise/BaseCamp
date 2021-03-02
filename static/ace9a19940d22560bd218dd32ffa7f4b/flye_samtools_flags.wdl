version 1.0

task FlyesamtoolsFlags {
  input {
    Int zero_x_one
    Int zero_x_two
    Int zero_x_four
    Int zero_x_eight
    Int zero_x_one_zero
    Int zero_x_two_zero
    Int zero_x_four_zero
    Int zero_x_eight_zero
    Int zero_x_one_zero_zero
    Int zero_x_two_zero_zero
    Int zero_x_four_zero_zero
    Int zero_x_eight_zero_zero
  }
  command <<<
    flye_samtools flags \
      ~{zero_x_one} \
      ~{zero_x_two} \
      ~{zero_x_four} \
      ~{zero_x_eight} \
      ~{zero_x_one_zero} \
      ~{zero_x_two_zero} \
      ~{zero_x_four_zero} \
      ~{zero_x_eight_zero} \
      ~{zero_x_one_zero_zero} \
      ~{zero_x_two_zero_zero} \
      ~{zero_x_four_zero_zero} \
      ~{zero_x_eight_zero_zero}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    zero_x_one: "PAIRED        .. paired-end (or multiple-segment) sequencing technology"
    zero_x_two: "PROPER_PAIR   .. each segment properly aligned according to the aligner"
    zero_x_four: "UNMAP         .. segment unmapped"
    zero_x_eight: "MUNMAP        .. next segment in the template unmapped"
    zero_x_one_zero: "REVERSE       .. SEQ is reverse complemented"
    zero_x_two_zero: "MREVERSE      .. SEQ of the next segment in the template is reversed"
    zero_x_four_zero: "READ1         .. the first segment in the template"
    zero_x_eight_zero: "READ2         .. the last segment in the template"
    zero_x_one_zero_zero: "SECONDARY     .. secondary alignment"
    zero_x_two_zero_zero: "QCFAIL        .. not passing quality controls"
    zero_x_four_zero_zero: "DUP           .. PCR or optical duplicate"
    zero_x_eight_zero_zero: "SUPPLEMENTARY .. supplementary alignment"
  }
  output {
    File out_stdout = stdout()
  }
}
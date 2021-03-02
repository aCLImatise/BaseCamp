version 1.0

task SequenceDiversity {
  input {
    Boolean? contact
    Boolean? notes
    Boolean? support
    Boolean? contribution
    Int one_dot
    Int two_dot
    Int three_dot
    Int four_dot
    Int five_dot
  }
  command <<<
    sequenceDiversity \
      ~{one_dot} \
      ~{two_dot} \
      ~{three_dot} \
      ~{four_dot} \
      ~{five_dot} \
      ~{if (contact) then "-Contact" else ""} \
      ~{if (notes) then "-Notes" else ""} \
      ~{if (support) then "-Support" else ""} \
      ~{if (contribution) then "-Contribution" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    contact: ": zev.kronenberg [at] gmail.com"
    notes: ": If you find a bug, please open a report on github!"
    support: ": Please post questions to biostars.org"
    contribution: ":\\nZev Kronenberg (UW Genome Sciences)\\nMark Yandell   (UU Human genetics)\\nMike Shapiro   (UU Biology)\\nEJ Osborne     (UU Human genetics)\\nBrett Kennedy  (UU Human genetics)\\nDaniel Ence    (UU Human genetics)\\nErik Garrison  (Wellcome Trust Sanger Institute)\\nTravis Collier (UC Davis)\\n-     Your name goes here       -'"
    one_dot: "seqid"
    two_dot: "start of window"
    three_dot: "end of window  "
    four_dot: "pi             "
    five_dot: "eHH            "
  }
  output {
    File out_stdout = stdout()
  }
}
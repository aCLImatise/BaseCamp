version 1.0

task RsatPeakmotifs {
  input {
    String? disco
    Boolean? two_tails
    String peak_motifs
    String testing_dot
    String supported_dot
    String track_dot
    String file_be_mb
    String server_dot
    String tasks_dot
    String when_option_mnomergelengthsm
    Int one_five_seven_eight_eight_eight_dot
    String pss_mdot
  }
  command <<<
    rsat peak_motifs \
      ~{peak_motifs} \
      ~{testing_dot} \
      ~{supported_dot} \
      ~{track_dot} \
      ~{file_be_mb} \
      ~{server_dot} \
      ~{tasks_dot} \
      ~{when_option_mnomergelengthsm} \
      ~{one_five_seven_eight_eight_eight_dot} \
      ~{pss_mdot} \
      ~{if defined(disco) then ("-disco " +  '"' + disco + '"') else ""} \
      ~{if (two_tails) then "-two_tails" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    disco: ",dyads"
    two_tails: ", which detects both under- and over-represented patterns."
    peak_motifs: "[1mVERSION[0m"
    testing_dot: "Matthieu Defrance <defrance@ccg.unam.mx>"
    supported_dot: "[1mOUTPUT FORMAT[0m"
    track_dot: "The 4th column of the BED file must correspond to the fasta headers."
    file_be_mb: "The file should be sufficiently large (several Mb) to provide a"
    server_dot: "[1m-disco"
    tasks_dot: "[33msynthesis[0m"
    when_option_mnomergelengthsm: "When the option [33m-no_merge_lengths[0m is active, matrices are built"
    one_five_seven_eight_eight_eight_dot: "[33mmatrix-quality[0m"
    pss_mdot: "If included by default, they can take a lot of disk space for large"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SamFLAGinfo.pl.orig {
  input {
    String? perlPerl
    String? samSamFlagInfoPl
    Int? intInt
  }
  command <<<
    samFLAGinfo.pl.orig \
      ~{perlPerl} \
      ~{samSamFlagInfoPl} \
      ~{intInt}
  >>>
}
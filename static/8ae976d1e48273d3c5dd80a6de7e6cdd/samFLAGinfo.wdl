version 1.0

task SamFLAGinfo.pl {
  input {
    String? perlPerl
    String? samSamFlagInfoPl
    Int? intInt
  }
  command <<<
    samFLAGinfo.pl \
      ~{perlPerl} \
      ~{samSamFlagInfoPl} \
      ~{intInt}
  >>>
}
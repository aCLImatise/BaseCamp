version 1.0

task ConvertMetaMapsToMash.pl {
  input {
    String? perlPerl
    String? convertConvertMetaMapTomasHpl
    String? dbnameDbname
  }
  command <<<
    convertMetaMapsToMash.pl \
      ~{perlPerl} \
      ~{convertConvertMetaMapTomasHpl} \
      ~{dbnameDbname}
  >>>
}
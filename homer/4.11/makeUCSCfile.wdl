version 1.0

task MakeUCSCfile {
  input {
    Boolean? circo_s
    String? skip_chr
    Boolean? noheader
    String tag_directory
  }
  command <<<
    makeUCSCfile \
      ~{tag_directory} \
      ~{true="-circos" false="" circo_s} \
      ~{if defined(skip_chr) then ("-skipChr " +  '"' + skip_chr + '"') else ""} \
      ~{true="-noheader" false="" noheader}
  >>>
  parameter_meta {
    circo_s: "<chrN:XXX-YYY|genome> (output only a specific region for circos[no header])"
    skip_chr: "(Skip this chromosome when making bedGraph)"
    noheader: "(don't print track lines, useful when making bigWigs)"
    tag_directory: ""
  }
}
version 1.0

task FcFasta2fasta {
  input {
    Boolean? gzip
    String? z_mw_start
  }
  command <<<
    fc_fasta2fasta \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(z_mw_start) then ("--zmw-start " +  '"' + z_mw_start + '"') else ""}
  >>>
  parameter_meta {
    gzip: "Compress intermediate fasta with gzip. (Not currently implemented.)"
    z_mw_start: "Ignore the zmw number in the fasta header. Instead, use a global counter, starting at this numer."
  }
}
version 1.0

task FcFasta2fasta {
  input {
    Boolean gzipGzip
    String zZMwStart
  }
  command <<<
    fc_fasta2fasta \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(zZMwStart) then ("--zmw-start " +  '"' + zZMwStart + '"') else ""}
  >>>
}
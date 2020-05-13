version 1.0

task GsutilHelpWeb {
  input {
    String mM
    Boolean eE
  }
  command <<<
    gsutil help web \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-e" false="" eE}
  >>>
}
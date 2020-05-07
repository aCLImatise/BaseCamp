version 1.0

task MessageExtract {
  input {
    String mM
    String? nNCodes
  }
  command <<<
    message-extract \
      ~{nNCodes} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}
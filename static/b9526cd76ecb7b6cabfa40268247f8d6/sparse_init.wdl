version 1.0

task SparseInit {
  input {
    String nN
  }
  command <<<
    sparse init \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}
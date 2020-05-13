version 1.0

task Echo {
  input {
    String nN
    Boolean eE
    Boolean eE
  }
  command <<<
    echo \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-E" false="" eE}
  >>>
}
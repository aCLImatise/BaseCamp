version 1.0

task Mkmapfile {
  input {
    String mM
    String uU
  }
  command <<<
    mkmapfile \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(uU) then ("-U " +  '"' + uU + '"') else ""}
  >>>
}
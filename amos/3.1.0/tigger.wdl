version 1.0

task Tigger {
  input {
    Boolean gG
    String vV
  }
  command <<<
    tigger \
      ~{true="-g" false="" gG} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}
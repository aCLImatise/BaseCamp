version 1.0

task Caper {
  input {
    File? conf
    Boolean? v
  }
  command <<<
    caper \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    conf: "Specify config file"
    v: ""
  }
}
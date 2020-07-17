version 1.0

task MeltEHH {
  input {
    String? region
    String? target
  }
  command <<<
    meltEHH \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    region: ":1-1000 > STDOUT 2> STDERR          "
    target: ""
  }
}
version 1.0

task Nice {
  input {
    String? adjustment
    String? option
  }
  command <<<
    nice \
      ~{option} \
      ~{if defined(adjustment) then ("--adjustment " +  '"' + adjustment + '"') else ""}
  >>>
  parameter_meta {
    adjustment: "add integer N to the niceness (default 10)"
    option: ""
  }
}
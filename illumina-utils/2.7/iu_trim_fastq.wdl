version 1.0

task IuTrimFastq {
  input {
    Int? trim_from
    Int? trim_to
    File var_2
    File var_3
  }
  command <<<
    iu-trim-fastq \
      ~{var_2} \
      ~{var_3} \
      ~{if defined(trim_from) then ("--trim-from " +  '"' + trim_from + '"') else ""} \
      ~{if defined(trim_to) then ("--trim-to " +  '"' + trim_to + '"') else ""}
  >>>
  parameter_meta {
    trim_from: "Trim from"
    trim_to: "Trim to"
    var_2: ""
    var_3: ""
  }
}
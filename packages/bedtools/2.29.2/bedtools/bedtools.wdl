version 1.0

task Bedtools {
  input {
    Boolean? contact
  }
  command <<<
    bedtools \
      ~{if (contact) then "--contact" else ""}
  >>>
  parameter_meta {
    contact: "Feature requests, bugs, mailing lists, etc."
  }
  output {
    File out_stdout = stdout()
  }
}
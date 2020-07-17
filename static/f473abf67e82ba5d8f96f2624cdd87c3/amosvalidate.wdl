version 1.0

task Amosvalidate {
  input {
    String? use_clear_range
    String amos_bank
  }
  command <<<
    amosvalidate \
      ~{amos_bank} \
      ~{if defined(use_clear_range) then ("-D " +  '"' + use_clear_range + '"') else ""}
  >>>
  parameter_meta {
    use_clear_range: "=<n>   Use the clear range of the reads? (0:no 1:yes, default: 1)"
    amos_bank: ""
  }
}
version 1.0

task Binlinks {
  input {
    String? bin_size
  }
  command <<<
    binlinks \
      ~{if defined(bin_size) then ("-bin_size " +  '"' + bin_size + '"') else ""}
  >>>
  parameter_meta {
    bin_size: ""
  }
}
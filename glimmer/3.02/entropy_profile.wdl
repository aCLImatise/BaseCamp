version 1.0

task EntropyProfile {
  input {
    String? min_len
  }
  command <<<
    entropy-profile \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    min_len: "Don't output any sequence shorter than <n> characters"
  }
}
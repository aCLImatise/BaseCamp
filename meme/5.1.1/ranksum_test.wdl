version 1.0

task RanksumTest {
  input {
    Boolean? p_value
    String? verbosity
    String n
    String p
    String r
  }
  command <<<
    ranksum_test \
      ~{n} \
      ~{p} \
      ~{r} \
      ~{true="--p-value" false="" p_value} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    p_value: "|0|1|2|3 (-1=left, 0=one-tailed,1=right, 2=two-tailed, 3=all (default))"
    verbosity: "|2|3|4 (default = 2)"
    n: ""
    p: ""
    r: ""
  }
}
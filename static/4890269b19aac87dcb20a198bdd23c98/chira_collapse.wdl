version 1.0

task ChiraCollapse.py {
  input {
    Boolean iI
    Boolean oO
    String umiUmiLen
  }
  command <<<
    chira_collapse.py \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{if defined(umiUmiLen) then ("--umi_len " +  '"' + umiUmiLen + '"') else ""}
  >>>
}
version 1.0

task VariantCaller {
  input {
    Boolean iI
    Boolean oO
    Boolean eE
    Boolean wW
    Boolean igIg
    Boolean defaultDefault
    Boolean psPs
    Boolean dtDt
    Boolean cyCy
    Boolean mpMp
    Boolean qualQual
    Boolean aA
  }
  command <<<
    variant_caller \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-w" false="" wW} \
      ~{true="-ig" false="" igIg} \
      ~{true="-- default" false="" defaultDefault} \
      ~{true="-ps" false="" psPs} \
      ~{true="-dt" false="" dtDt} \
      ~{true="-cy" false="" cyCy} \
      ~{true="-mp" false="" mpMp} \
      ~{true="-qual" false="" qualQual} \
      ~{true="-a" false="" aA}
  >>>
}
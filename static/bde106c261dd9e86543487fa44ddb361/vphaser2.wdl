version 1.0

task Vphaser2 {
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
    vphaser2 \
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
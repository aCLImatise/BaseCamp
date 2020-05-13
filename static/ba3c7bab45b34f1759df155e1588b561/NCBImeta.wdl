version 1.0

task NCBImeta.py {
  input {
    String configConfig
    Boolean flatFlat
  }
  command <<<
    NCBImeta.py \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--flat" false="" flatFlat}
  >>>
}
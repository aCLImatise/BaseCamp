version 1.0

task FilterStoptags.py {
  input {
    Boolean? info
    String? k_size
    Boolean? force
  }
  command <<<
    filter-stoptags.py \
      ~{true="--info" false="" info} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size (default: 32)"
    force: "Overwrite output file if it exists (default: False)"
  }
}
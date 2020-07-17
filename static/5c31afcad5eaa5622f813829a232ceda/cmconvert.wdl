version 1.0

task Cmconvert {
  input {
    Boolean? ascii_output_models
    Boolean? binary_output_models
    Boolean? output_backward_compatible
    String? save_cm_file
    Boolean? ml_hmm
    Boolean? f_hmm
    Boolean? options
  }
  command <<<
    cmconvert \
      ~{true="-a" false="" ascii_output_models} \
      ~{true="-b" false="" binary_output_models} \
      ~{true="-1" false="" output_backward_compatible} \
      ~{if defined(save_cm_file) then ("-o " +  '"' + save_cm_file + '"') else ""} \
      ~{true="--mlhmm" false="" ml_hmm} \
      ~{true="--fhmm" false="" f_hmm} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    ascii_output_models: ": ascii:  output models in INFERNAL 1.1 ASCII format  [default]"
    binary_output_models: ": binary: output models in INFERNAL 1.1 binary format"
    output_backward_compatible: ": output backward compatible Infernal v0.7-->v1.0.2 ASCII format"
    save_cm_file: ": save CM file to file <f>, not stdout"
    ml_hmm: ": output maximum likelihood HMM for CM in HMMER3 format"
    f_hmm: ": output filter HMM for CM in HMMER3 format"
    options: ""
  }
}
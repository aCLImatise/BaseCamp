version 1.0

task Cmconvert {
  input {
    Boolean? ascii_output_models
    Boolean? binary_output_models
    Boolean? output_backward_compatible
    File? save_cm_file
    Boolean? ml_hmm
    Boolean? f_hmm
    Boolean? options
  }
  command <<<
    cmconvert \
      ~{if (ascii_output_models) then "-a" else ""} \
      ~{if (binary_output_models) then "-b" else ""} \
      ~{if (output_backward_compatible) then "-1" else ""} \
      ~{if defined(save_cm_file) then ("-o " +  '"' + save_cm_file + '"') else ""} \
      ~{if (ml_hmm) then "--mlhmm" else ""} \
      ~{if (f_hmm) then "--fhmm" else ""} \
      ~{if (options) then "-options" else ""}
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
  output {
    File out_stdout = stdout()
  }
}
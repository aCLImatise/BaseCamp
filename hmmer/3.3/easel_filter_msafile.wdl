version 1.0

task EaselFilterMsafile {
  input {
    Boolean? options
    String easel
    String filter
    Int max_id
    String msa_file
  }
  command <<<
    easel filter msafile \
      ~{easel} \
      ~{filter} \
      ~{max_id} \
      ~{msa_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    easel: ""
    filter: ""
    max_id: ""
    msa_file: ""
  }
}
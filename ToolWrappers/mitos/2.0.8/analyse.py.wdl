version 1.0

task Analysepy {
  input {
    Int? size
    Boolean? linear
    String? a_type
    String? f_type
    String? a_name
    String? fname
    String annotation
    String reference
  }
  command <<<
    analyse_py \
      ~{annotation} \
      ~{reference} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(a_type) then ("--atype " +  '"' + a_type + '"') else ""} \
      ~{if defined(f_type) then ("--ftype " +  '"' + f_type + '"') else ""} \
      ~{if defined(a_name) then ("--aname " +  '"' + a_name + '"') else ""} \
      ~{if defined(fname) then ("--fname " +  '"' + fname + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    size: "length of the sequence (mandatory for circular\\nsequences)"
    linear: "treat sequence as linear"
    a_type: "get all features of type TYPE"
    f_type: "get all features except features of type TYPE"
    a_name: "get all features with name NAME"
    fname: "get all features except features with name NAME\\n"
    annotation: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}
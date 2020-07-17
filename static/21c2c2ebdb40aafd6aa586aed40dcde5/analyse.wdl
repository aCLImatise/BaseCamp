version 1.0

task Analyse.py {
  input {
    String? a_type
    String? f_type
    String? a_name
    String? fname
    String annotation
    String reference
  }
  command <<<
    analyse.py \
      ~{annotation} \
      ~{reference} \
      ~{if defined(a_type) then ("--atype " +  '"' + a_type + '"') else ""} \
      ~{if defined(f_type) then ("--ftype " +  '"' + f_type + '"') else ""} \
      ~{if defined(a_name) then ("--aname " +  '"' + a_name + '"') else ""} \
      ~{if defined(fname) then ("--fname " +  '"' + fname + '"') else ""}
  >>>
  parameter_meta {
    a_type: "get all features of type TYPE"
    f_type: "get all features except features of type TYPE"
    a_name: "get all features with name NAME"
    fname: "get all features except features with name NAME"
    annotation: ""
    reference: ""
  }
}
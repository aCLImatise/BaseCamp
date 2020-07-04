version 1.0

task Predict.py {
  input {
    String? k
    String phenotypes
    String from
    String hmmer
    String pfam
    String annotation
  }
  command <<<
    predict.py \
      ~{phenotypes} \
      ~{from} \
      ~{hmmer} \
      ~{pfam} \
      ~{annotation} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    k: ""
    phenotypes: ""
    from: ""
    hmmer: ""
    pfam: ""
    annotation: ""
  }
}
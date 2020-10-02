version 1.0

task Tagcorpus {
  input {
    File? types
    File? documents
  }
  command <<<
    tagcorpus \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if defined(documents) then ("--documents " +  '"' + documents + '"') else ""}
  >>>
  parameter_meta {
    types: "--entities=filename\\n--names=filename"
    documents: "Read input from file instead of from STDIN\\n--groups=filename\\n--type-pairs=filename   Types of pairs that are allowed\\n--stopwords=filename\\n--autodetect Turn autodetect on\\n--tokenize-characters Turn single-character tokenization on\\n--document-weight=1.00\\n--paragraph-weight=2.00\\n--sentence-weight=0.20\\n--normalization-factor=0.60\\n--threads=1\\n--out-matches=filename\\n--out-pairs=filename\\n--out-segments=filename\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
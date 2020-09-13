version 1.0

task Tagcorpus {
  input {
    File? types
    File? entities
    File? names
    File? documents
    File? groups
    File? type_pairs
    File? stopwords
    String? autodetect
    String? tokenize_characters
    Int? document_weight
    Int? paragraph_weight
    Int? sentence_weight
    Int? normalization_factor
    Int? threads
    File? out_matches
    File? out_pairs
    File? out_segments
  }
  command <<<
    tagcorpus \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if defined(entities) then ("--entities " +  '"' + entities + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(documents) then ("--documents " +  '"' + documents + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(type_pairs) then ("--type-pairs " +  '"' + type_pairs + '"') else ""} \
      ~{if defined(stopwords) then ("--stopwords " +  '"' + stopwords + '"') else ""} \
      ~{if defined(autodetect) then ("--autodetect " +  '"' + autodetect + '"') else ""} \
      ~{if defined(tokenize_characters) then ("--tokenize-characters " +  '"' + tokenize_characters + '"') else ""} \
      ~{if defined(document_weight) then ("--document-weight " +  '"' + document_weight + '"') else ""} \
      ~{if defined(paragraph_weight) then ("--paragraph-weight " +  '"' + paragraph_weight + '"') else ""} \
      ~{if defined(sentence_weight) then ("--sentence-weight " +  '"' + sentence_weight + '"') else ""} \
      ~{if defined(normalization_factor) then ("--normalization-factor " +  '"' + normalization_factor + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(out_matches) then ("--out-matches " +  '"' + out_matches + '"') else ""} \
      ~{if defined(out_pairs) then ("--out-pairs " +  '"' + out_pairs + '"') else ""} \
      ~{if defined(out_segments) then ("--out-segments " +  '"' + out_segments + '"') else ""}
  >>>
  parameter_meta {
    types: ""
    entities: ""
    names: ""
    documents: "Read input from file instead of from STDIN"
    groups: ""
    type_pairs: "Types of pairs that are allowed"
    stopwords: ""
    autodetect: "autodetect on"
    tokenize_characters: "single-character tokenization on"
    document_weight: ""
    paragraph_weight: ""
    sentence_weight: ""
    normalization_factor: ""
    threads: ""
    out_matches: ""
    out_pairs: ""
    out_segments: ""
  }
  output {
    File out_stdout = stdout()
  }
}
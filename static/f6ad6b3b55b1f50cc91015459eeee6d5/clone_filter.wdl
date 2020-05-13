version 1.0

task CloneFilter {
  input {
    Boolean inlineInlineNull
    Boolean nullNullInline
    Boolean nullNullIndex
    Boolean indexIndexNull
    Boolean inlineInlineInline
    Boolean indexIndexIndex
    Boolean inlineInlineIndex
    Boolean indexIndexInline
  }
  command <<<
    clone_filter \
      ~{true="--inline-null" false="" inlineInlineNull} \
      ~{true="--null-inline" false="" nullNullInline} \
      ~{true="--null-index" false="" nullNullIndex} \
      ~{true="--index-null" false="" indexIndexNull} \
      ~{true="--inline-inline" false="" inlineInlineInline} \
      ~{true="--index-index" false="" indexIndexIndex} \
      ~{true="--inline-index" false="" inlineInlineIndex} \
      ~{true="--index-inline" false="" indexIndexInline}
  >>>
}
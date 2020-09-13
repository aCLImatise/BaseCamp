version 1.0

task GetMaskedRepresentativespy {
  input {
    String? representatives
    String? to_mask
    String? l
    String? a
    String? representative_seqs_out
    String? metadata
    String? metadata_out
  }
  command <<<
    get_masked_representatives_py \
      ~{if defined(representatives) then ("--representatives " +  '"' + representatives + '"') else ""} \
      ~{if defined(to_mask) then ("--to-mask " +  '"' + to_mask + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(representative_seqs_out) then ("--representative-seqs-out " +  '"' + representative_seqs_out + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(metadata_out) then ("--metadata-out " +  '"' + metadata_out + '"') else ""}
  >>>
  parameter_meta {
    representatives: ""
    to_mask: ""
    l: ""
    a: ""
    representative_seqs_out: ""
    metadata: ""
    metadata_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}
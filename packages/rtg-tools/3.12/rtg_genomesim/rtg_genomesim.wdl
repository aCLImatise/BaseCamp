version 1.0

task RtgGenomesim {
  input {
    String? output_sdf
    String? comment
    Int? freq
    Int? length
    Int? max_length
    Int? min_length
    Int? num_contigs
    String? prefix
    Int? seed
  }
  command <<<
    rtg genomesim \
      ~{if defined(output_sdf) then ("--output " +  '"' + output_sdf + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(num_contigs) then ("--num-contigs " +  '"' + num_contigs + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    output_sdf: "output SDF"
    comment: "comment to include in the generated SDF"
    freq: "relative frequencies of A,C,G,T in the generated\\nsequence (Default is 1,1,1,1)"
    length: "length of generated sequence. May be specified 0 or\\nmore times, or as a comma separated list"
    max_length: "maximum sequence length"
    min_length: "minimum sequence length"
    num_contigs: "number of sequences to generate"
    prefix: "sequence name prefix (Default is simulatedSequence)"
    seed: "seed for random number generator"
  }
  output {
    File out_stdout = stdout()
  }
}
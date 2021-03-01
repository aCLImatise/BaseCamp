version 1.0

task HmmgsMerge {
  input {
    Boolean? all
    Int? min_bits
    Int? min_length
    File? out
    String? short_sample_name
    String usage
  }
  command <<<
    hmmgs merge \
      ~{usage} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(min_bits) then ("--min-bits " +  '"' + min_bits + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(short_sample_name) then ("--short_samplename " +  '"' + short_sample_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "Generate all combinations for multiple\\npaths, instead of just the best"
    min_bits: "Minimum bits score"
    min_length: "Minimum length"
    out: "Write output to file instead of stdout"
    short_sample_name: "short sample name, to be used as part of\\ncontig identifiers. This allow analyzing\\ncontigs together from different samples in\\ndownstream analysis\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
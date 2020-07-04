version 1.0

task SamplingUtilsRandSeq {
  input {
    Int? num_seqs
    Float? gc_content
    File? infer_params
    Float? coding_prop
    Int? length
    Boolean? const_model
    Float? dist_loc
    Boolean? fast_q
    File? save_model
    File? read_model
    Boolean? progress
    String? output_file
  }
  command <<<
    sampling-utils rand_seq \
      ~{output_file} \
      ~{if defined(num_seqs) then ("--num-seqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(gc_content) then ("--gc-content " +  '"' + gc_content + '"') else ""} \
      ~{if defined(infer_params) then ("--infer-params " +  '"' + infer_params + '"') else ""} \
      ~{if defined(coding_prop) then ("--coding-prop " +  '"' + coding_prop + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--const-model" false="" const_model} \
      ~{if defined(dist_loc) then ("--dist-loc " +  '"' + dist_loc + '"') else ""} \
      ~{true="--fastq" false="" fast_q} \
      ~{if defined(save_model) then ("--save-model " +  '"' + save_model + '"') else ""} \
      ~{if defined(read_model) then ("--read-model " +  '"' + read_model + '"') else ""} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    num_seqs: "Number of sequences to generate  [default: 1000]"
    gc_content: "GC content (defaults to .5 out of 1)  [default: 0.5]"
    infer_params: "Infer parameters GC content and Quality model from file"
    coding_prop: "Proportion of coding sequences  [default: 0.0]"
    length: "Sequence length  [default: 150]"
    const_model: "Use a model with constant qualities + noise"
    dist_loc: "Use as the starting point quality  [default: 30.0]"
    fast_q: "The output file is a FastQ file"
    save_model: "Save inferred qualities model to a pickle file"
    read_model: "Load qualities model from a pickle file"
    progress: "Shows Progress Bar"
    output_file: ""
  }
}
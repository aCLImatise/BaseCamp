version 1.0

task AdptSim {
  input {
    Boolean? adapter_observed_forward
    Boolean? adapter_observed_reverse
    Boolean? desired_read_length
    Boolean? name
    Boolean? tag
    String? bam_slash_fast_a
    File? file
  }
  command <<<
    adptSim \
      ~{bam_slash_fast_a} \
      ~{file} \
      ~{true="-f" false="" adapter_observed_forward} \
      ~{true="-s" false="" adapter_observed_reverse} \
      ~{true="-l" false="" desired_read_length} \
      ~{true="-name" false="" name} \
      ~{true="-tag" false="" tag}
  >>>
  parameter_meta {
    adapter_observed_forward: "[seq]                   Adapter that is observed after the forward read (Default:  AGATCGGAAG...)"
    adapter_observed_reverse: "[seq]                   Adapter that is observed after the reverse read (Default:  AGATCGGAAG...)"
    desired_read_length: "[length]                Desired read length  (Default:  100)"
    name: "Append BAM tags or to deflines if adapters are added (Default:  not on/not used)"
    tag: "[tag]                   Append this string to deflines or BAM tags (Default:  not on/not used)"
    bam_slash_fast_a: ""
    file: ""
  }
}
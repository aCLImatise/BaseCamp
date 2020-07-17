version 1.0

task Pairtools {
  input {
    Boolean? post_mortem
    String? output_profile
  }
  command <<<
    pairtools \
      ~{true="--post-mortem" false="" post_mortem} \
      ~{if defined(output_profile) then ("--output-profile " +  '"' + output_profile + '"') else ""}
  >>>
  parameter_meta {
    post_mortem: "Post mortem debugging"
    output_profile: "Profile performance with Python cProfile and dump the statistics into a binary file"
  }
}
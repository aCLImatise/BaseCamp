version 1.0

task Pairtools {
  input {
    Boolean? post_mortem
    File? output_profile
  }
  command <<<
    pairtools \
      ~{if (post_mortem) then "--post-mortem" else ""} \
      ~{if defined(output_profile) then ("--output-profile " +  '"' + output_profile + '"') else ""}
  >>>
  parameter_meta {
    post_mortem: "Post mortem debugging"
    output_profile: "Profile performance with Python cProfile and dump the\\nstatistics into a binary file"
  }
  output {
    File out_stdout = stdout()
  }
}
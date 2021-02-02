version 1.0

task Vcfleftalign {
  input {
    File? reference
    Int? window
    File? file
  }
  command <<<
    vcfleftalign \
      ~{file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""}
  >>>
  parameter_meta {
    reference: "Use this reference as a basis for realignment."
    window: "Use a window of this many bp when left aligning (150)."
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
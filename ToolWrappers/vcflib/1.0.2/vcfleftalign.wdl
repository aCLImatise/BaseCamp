version 1.0

task Vcfleftalign {
  input {
    File? reference
    Int? window
    File? var_file
  }
  command <<<
    vcfleftalign \
      ~{var_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    reference: "Use this reference as a basis for realignment."
    window: "Use a window of this many bp when left aligning (150)."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
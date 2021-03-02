version 1.0

task GsutilRb {
  input {
    Boolean? continues_silently_printing
    String the_mdot
  }
  command <<<
    gsutil rb \
      ~{the_mdot} \
      ~{if (continues_silently_printing) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    continues_silently_printing: "Continues silently (without printing error messages) despite\\nerrors when removing buckets. If some buckets couldn't be removed,\\ngsutil's exit status will be non-zero even if this flag is set.\\n"
    the_mdot: "Be certain you want to delete a bucket before you do so, as once it is"
  }
  output {
    File out_stdout = stdout()
  }
}
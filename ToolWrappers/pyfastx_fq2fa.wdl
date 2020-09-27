version 1.0

task PyfastxFq2fa {
  input {
    File? out_file
    String fast_x
  }
  command <<<
    pyfastx fq2fa \
      ~{fast_x} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""}
  >>>
  parameter_meta {
    out_file: "output file, default: output to stdout\\n"
    fast_x: "fastq file, gzip support"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}
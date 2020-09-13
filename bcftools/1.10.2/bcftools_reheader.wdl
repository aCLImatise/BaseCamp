version 1.0

task BcftoolsReheader {
  input {
    File? fai
    File? header
    File? write_output_file
    File? samples
    Int? threads
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools reheader \
      ~{in_dot_vcf_do_tgz} \
      ~{if defined(fai) then ("--fai " +  '"' + fai + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    fai: "update sequences and their lengths from the .fai file"
    header: "new header"
    write_output_file: "write output to a file [standard output]"
    samples: "new sample names"
    threads: "use multithreading with <int> worker threads (BCF only) [0]"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
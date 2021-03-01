version 1.0

task PyfastxSample {
  input {
    Int? number_sequences_sampled
    Float? proportion_sequences_sampled
    Int? seed
    Boolean? sequential_read
    File? out_file
  }
  command <<<
    pyfastx sample \
      ~{if defined(number_sequences_sampled) then ("-n " +  '"' + number_sequences_sampled + '"') else ""} \
      ~{if defined(proportion_sequences_sampled) then ("-p " +  '"' + proportion_sequences_sampled + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (sequential_read) then "--sequential-read" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyfastx:0.8.2--py36h955c1b8_0"
  }
  parameter_meta {
    number_sequences_sampled: "number of sequences to be sampled"
    proportion_sequences_sampled: "proportion of sequences to be sampled, 0~1"
    seed: "random seed, default is the current system time"
    sequential_read: "start sequential reading, particularly suitable for\\nsampling large numbers of sequences"
    out_file: "output file, default: output to stdout\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}
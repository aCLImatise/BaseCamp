version 1.0

task KallistoPseudo {
  input {
    File? index
    Directory? output_dir
    Boolean? umi
    File? batch
    Int? fragment_length
    Int? sd
    Int? threads
    String? arguments
    String fast_q_files
  }
  command <<<
    kallisto pseudo \
      ~{arguments} \
      ~{fast_q_files} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (umi) then "--umi" else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    index: "Filename for the kallisto index to be used for\\npseudoalignment"
    output_dir: "Directory to write output to"
    umi: "First file in pair is a UMI file"
    batch: "Process files listed in FILE\\n--quant                   Quantify using EM algorithm (only in batch mode)\\n--single                  Quantify single-end reads"
    fragment_length: "Estimated average fragment length"
    sd: "Estimated standard deviation of fragment length\\n(default: -l, -s values are estimated from paired\\nend data, but are required when using --single)"
    threads: "Number of threads to use (default: 1)"
    arguments: ""
    fast_q_files: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
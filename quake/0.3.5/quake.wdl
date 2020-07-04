version 1.0

task Quake.py {
  input {
    Boolean? no_jelly
    Boolean? no_count
    Boolean? count_kmers_wo
    String? hash_size
    Boolean? no_cut
    String? ratio
    Int? return_only_reads
    Boolean? output_error_reads
    String? use_bwalike_trimpar
    Boolean? headers
    Boolean? log
  }
  command <<<
    quake.py \
      ~{true="--no_jelly" false="" no_jelly} \
      ~{true="--no_count" false="" no_count} \
      ~{true="--int" false="" count_kmers_wo} \
      ~{if defined(hash_size) then ("--hash_size " +  '"' + hash_size + '"') else ""} \
      ~{true="--no_cut" false="" no_cut} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(return_only_reads) then ("-l " +  '"' + return_only_reads + '"') else ""} \
      ~{true="-u" false="" output_error_reads} \
      ~{if defined(use_bwalike_trimpar) then ("-t " +  '"' + use_bwalike_trimpar + '"') else ""} \
      ~{true="--headers" false="" headers} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    no_jelly: "Count k-mers using a simpler program than Jellyfish"
    no_count: "Kmers are already counted and in expected file [reads file].qcts or [reads file].cts [default: False]"
    count_kmers_wo: "Count kmers as integers w/o the use of quality values [default: False]"
    hash_size: "Jellyfish hash-size parameter. Quake will estimate using k if not given"
    no_cut: "Coverage model is optimized and cutoff was printed to expected file cutoff.txt [default: False]"
    ratio: "Likelihood ratio to set trusted/untrusted cutoff. Generally set between 10-1000 with lower numbers suggesting a lower threshold. [default: 200]"
    return_only_reads: "Return only reads corrected and/or trimmed to <min_read> bp"
    output_error_reads: "Output error reads even if they can't be corrected, maintaing paired end reads"
    use_bwalike_trimpar: "Use BWA-like trim parameter <trim_par>"
    headers: "Output only the original read headers without correction messages"
    log: "Output a log of all corrections into *.log as \"quality position new_nt old_nt\""
  }
}
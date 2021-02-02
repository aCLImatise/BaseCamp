version 1.0

task RMETLDetection {
  input {
    Int? min_support
    Int? min_length
    Int? min_distance
    Int? threads
    String? presets
    String reference
    String temp_dir
    String output_dir
  }
  command <<<
    rMETL detection \
      ~{reference} \
      ~{temp_dir} \
      ~{output_dir} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_distance) then ("--min_distance " +  '"' + min_distance + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(presets) then ("--presets " +  '"' + presets + '"') else ""}
  >>>
  parameter_meta {
    min_support: "Mininum number of reads that support a ME.[5]"
    min_length: "Mininum length of ME to be reported.[50]"
    min_distance: "Mininum distance of two ME signatures to be\\nintergrated.[20]"
    threads: "Number of threads to use.[8]"
    presets: "The sequencing platform <pacbio,ont> of the\\nreads.[pacbio]\\n"
    reference: "The reference genome in fasta format."
    temp_dir: "Temporary directory to use for distributed jobs."
    output_dir: "Directory to output potential ME loci."
  }
  output {
    File out_stdout = stdout()
  }
}
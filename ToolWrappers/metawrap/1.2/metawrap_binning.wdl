version 1.0

task MetawrapBinning {
  input {
    File? metagenomic_assembly_file
    Directory? output_directory
    Int? number_threads_default
    Int? amount_ram_available
    Int? minimum_contig_length
    Boolean? metab_at_two
    Boolean? metab_at_one
    Boolean? max_bin_two
    Boolean? concoct
    Boolean? universal
    Boolean? run_check_m
    Boolean? single_end
    Boolean? interleaved
    Int? reads_x_one_dot_fast_q
    Int? reads_x_two_dot_fast_q
  }
  command <<<
    metawrap binning \
      ~{reads_x_one_dot_fast_q} \
      ~{reads_x_two_dot_fast_q} \
      ~{if defined(metagenomic_assembly_file) then ("-a " +  '"' + metagenomic_assembly_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(amount_ram_available) then ("-m " +  '"' + amount_ram_available + '"') else ""} \
      ~{if defined(minimum_contig_length) then ("-l " +  '"' + minimum_contig_length + '"') else ""} \
      ~{if (metab_at_two) then "--metabat2" else ""} \
      ~{if (metab_at_one) then "--metabat1" else ""} \
      ~{if (max_bin_two) then "--maxbin2" else ""} \
      ~{if (concoct) then "--concoct" else ""} \
      ~{if (universal) then "--universal" else ""} \
      ~{if (run_check_m) then "--run-checkm" else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if (interleaved) then "--interleaved" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    metagenomic_assembly_file: "metagenomic assembly file"
    output_directory: "output directory"
    number_threads_default: "number of threads (default=1)"
    amount_ram_available: "amount of RAM available (default=4)"
    minimum_contig_length: "minimum contig length to bin (default=1000bp). Note: metaBAT will default to 1500bp minimum"
    metab_at_two: "bin contigs with metaBAT2"
    metab_at_one: "bin contigs with the original metaBAT"
    max_bin_two: "bin contigs with MaxBin2"
    concoct: "bin contigs with CONCOCT"
    universal: "use universal marker genes instead of bacterial markers in MaxBin2 (improves Archaea binning)"
    run_check_m: "immediately run CheckM on the bin results (requires 40GB+ of memory)"
    single_end: "non-paired reads mode (provide *.fastq files)"
    interleaved: "the input read files contain interleaved paired-end reads"
    reads_x_one_dot_fast_q: ""
    reads_x_two_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}
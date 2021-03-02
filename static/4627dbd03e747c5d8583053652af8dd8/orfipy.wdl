version 1.0

task Orfipy {
  input {
    Int? procs
    Boolean? single_mode
    Int? table
    String? start
    String? stop
    File? outdir
    File? be_done_two
    File? bed
    File? dna
    File? rna
    File? pep
    Int? min
    Int? max
    String? strand
    Boolean? partial_three
    Boolean? partial_five
    Boolean? between_stops
    Boolean? include_stop
    File? longest
    Boolean? by_frame
    Int? chunk_size
    Boolean? show_tables
    String in_file
  }
  command <<<
    orfipy \
      ~{in_file} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if (single_mode) then "--single-mode" else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(be_done_two) then ("--bed12 " +  '"' + be_done_two + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(dna) then ("--dna " +  '"' + dna + '"') else ""} \
      ~{if defined(rna) then ("--rna " +  '"' + rna + '"') else ""} \
      ~{if defined(pep) then ("--pep " +  '"' + pep + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if (partial_three) then "--partial-3" else ""} \
      ~{if (partial_five) then "--partial-5" else ""} \
      ~{if (between_stops) then "--between-stops" else ""} \
      ~{if (include_stop) then "--include-stop" else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if (by_frame) then "--by-frame" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if (show_tables) then "--show-tables" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/orfipy:0.0.3--py37h9a982cc_0"
  }
  parameter_meta {
    procs: "Num processor cores to use Default:mp.cpu_count()"
    single_mode: "Run in single mode i.e. no parallel processing\\n(SLOWER). If supplied with procs, this is ignored.\\nDefault: False"
    table: "The codon table number to use or path to .json file\\nwith codon table. Use --show-tables to see available\\ntables compiled from: https://www.ncbi.nlm.nih.gov/Tax\\nonomy/Utils/wprintgc.cgi?chapter=cgencodes Default: 1"
    start: "Comma-separated list of start-codons. This will\\noverride start codons described in translation table.\\nE.g. \\\"--start ATG,ATT\\\" Default: Derived from the\\ntranslation table selected"
    stop: "Comma-separated list of stop codons. This will\\noverride stop codons described in translation table.\\nE.g. \\\"--start TAG,TTT\\\" Default: Derived from the\\ntranslation table selected"
    outdir: "Path to outdir default: orfipy_<infasta>_out"
    be_done_two: "bed12 out file Default: None"
    bed: "bed out file Default: None"
    dna: "fasta (DNA) out file Default: None"
    rna: "fasta (RNA) out file Default: None"
    pep: "fasta (peptide) out file Default: None"
    min: "Minimum length of ORF, excluding stop codon\\n(nucleotide) Default: 30"
    max: "Maximum length of ORF, excluding stop codon\\n(nucleotide) Default: 1,000,000,000"
    strand: "Strands to find ORFs [(f)orward,(r)everse,(b)oth]\\nDefault: b"
    partial_three: "Output ORFs with a start codon but lacking an inframe\\nstop codon. E.g. \\\"ATG TTT AAA\\\" Default: False"
    partial_five: "Output ORFs with an inframe stop codon lacking an\\ninframe start codon. E.g. \\\"TTT AAA TAG\\\" Default: False"
    between_stops: "Output ORFs defined as regions between stop codons\\n(regions free of stop codon). This will set\\n--partial-3 and --partial-5 true. Default: False"
    include_stop: "Include stop codon in the results, if a stop codon\\nexists. This output format is compatible with\\nTransDecoder's which includes stop codon coordinates\\nDefault: False"
    longest: "Output a separate BED file for longest ORFs per\\nsequence. Requires bed option. Default: False"
    by_frame: "Output separate BED files for ORFs by frame. Can be\\ncombined with \\\"--longest\\\" to output longest ORFs in\\neach frame. Requires bed option. Default: False"
    chunk_size: "Max chunk size in MB. This is useful for limiting\\nmemory usage when processing large fasta files using\\nmultiple processes The files are processed in chunks\\nif file size is greater than chunk-size. By default\\norfipy computes the chunk size based on available\\nmemory and cpu cores. Providing a smaller chunk-size\\nwill lower the memory usage but, actual memory used by\\norfipy can be more than the chunk-size. Providing a\\nvery high chunk-size can lead to memory issues for\\nlarger sequences such as large chromosomes. It is best\\nto let orfipy decide on the chunk-size. Default:\\nestimated by orfipy based on system memory and cpu"
    show_tables: "Print translation tables and exit. Default: False"
    in_file: "The input file, in plain Fasta/Fastq or gzipped\\nformat, containing Nucletide sequences"
  }
  output {
    File out_stdout = stdout()
    File out_be_done_two = "${in_be_done_two}"
    File out_bed = "${in_bed}"
    File out_dna = "${in_dna}"
    File out_rna = "${in_rna}"
    File out_pep = "${in_pep}"
    File out_longest = "${in_longest}"
  }
}
version 1.0

task Weave {
  input {
    String? assembly
    String? reads
    String? depth
    Int? length
    Array[String] telomere
    String? window_size
    Boolean? force_read_output
    Int? min_contig_alignment
    String? directory_write_weaveoutput
    String? cores
  }
  command <<<
    weave \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(telomere) then ("--telomere " +  '"' + telomere + '"') else ""} \
      ~{if defined(window_size) then ("--windowsize " +  '"' + window_size + '"') else ""} \
      ~{true="--forcereadoutput" false="" force_read_output} \
      ~{if defined(min_contig_alignment) then ("--mincontigalignment " +  '"' + min_contig_alignment + '"') else ""} \
      ~{if defined(directory_write_weaveoutput) then ("--output " +  '"' + directory_write_weaveoutput + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    assembly: "filename of assembly in FASTA format (required)"
    reads: "filename of long reads in FASTQ format (required; must be gzipped)"
    depth: "genome coverage to subsample from FASTQ file (default 50)"
    length: "minimum read length to retain when subsampling (default 10000 bp)"
    telomere: "telomere sequence to search for"
    window_size: "window size for ploidy calculations (default ~1/30th of contig N50 length, minimum 10000 bp)"
    force_read_output: "output read alignments whatever the assembly size (default, only output read alignments for <50 Mb assemblies)"
    min_contig_alignment: "minimum length of contig alignment to keep (default 2000 bp)"
    directory_write_weaveoutput: "directory to write output, default weave_output"
    cores: "number of parallel cores to use (default 1)"
  }
}
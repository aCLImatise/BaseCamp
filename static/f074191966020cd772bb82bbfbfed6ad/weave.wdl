version 1.0

task Weave {
  input {
    File? assembly
    File? reads
    File? depth
    Int? length
    Array[String] telomere
    Int? window_size
    Boolean? force_read_output
    Int? min_contig_alignment
    Directory? directory_write_default
    Int? cores
  }
  command <<<
    weave \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(telomere) then ("--telomere " +  '"' + telomere + '"') else ""} \
      ~{if defined(window_size) then ("--windowsize " +  '"' + window_size + '"') else ""} \
      ~{if (force_read_output) then "--forcereadoutput" else ""} \
      ~{if defined(min_contig_alignment) then ("--mincontigalignment " +  '"' + min_contig_alignment + '"') else ""} \
      ~{if defined(directory_write_default) then ("--output " +  '"' + directory_write_default + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "filename of assembly in FASTA format (required)"
    reads: "filename of long reads in FASTQ format (required; must\\nbe gzipped)"
    depth: "genome coverage to subsample from FASTQ file (default\\n50)"
    length: "minimum read length to retain when subsampling\\n(default 10000 bp)"
    telomere: "telomere sequence to search for"
    window_size: "window size for ploidy calculations (default ~1/30th\\nof contig N50 length, minimum 10000 bp)"
    force_read_output: "output read alignments whatever the assembly size\\n(default, only output read alignments for <50 Mb\\nassemblies)"
    min_contig_alignment: "minimum length of contig alignment to keep (default\\n2000 bp)"
    directory_write_default: "directory to write output, default weave_output"
    cores: "number of parallel cores to use (default 1)"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_write_default = "${in_directory_write_default}"
  }
}
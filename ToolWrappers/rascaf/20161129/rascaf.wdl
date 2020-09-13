version 1.0

task Rascaf {
  input {
    File? required_path_coordinatesorted
    File? recommended_paths_used
    File? prefix_output_file
    File? bc
    Int? ms
    Int? ml
    Int? break_n
    Int? size_you_want
    File? cs
    Boolean? verbose_mode_default
  }
  command <<<
    rascaf \
      ~{if defined(required_path_coordinatesorted) then ("-b " +  '"' + required_path_coordinatesorted + '"') else ""} \
      ~{if defined(recommended_paths_used) then ("-f " +  '"' + recommended_paths_used + '"') else ""} \
      ~{if defined(prefix_output_file) then ("-o " +  '"' + prefix_output_file + '"') else ""} \
      ~{if defined(bc) then ("-bc " +  '"' + bc + '"') else ""} \
      ~{if defined(ms) then ("-ms " +  '"' + ms + '"') else ""} \
      ~{if defined(ml) then ("-ml " +  '"' + ml + '"') else ""} \
      ~{if defined(break_n) then ("-breakN " +  '"' + break_n + '"') else ""} \
      ~{if defined(size_you_want) then ("-k " +  '"' + size_you_want + '"') else ""} \
      ~{if (cs) then "-cs" else ""} \
      ~{if (verbose_mode_default) then "-v" else ""}
  >>>
  parameter_meta {
    required_path_coordinatesorted: "(required): the path to the coordinate-sorted alignment BAM file"
    recommended_paths_used: "(recommended): the paths to the raw assembly fasta file(default: not used)"
    prefix_output_file: ": prefix of the output file (default: rascaf)"
    bc: ": the path to the alignment BAM file allowing clipping from non-spliced aligner (default: not used)"
    ms: ": minimum support for connecting two contigs(default: 2)"
    ml: ": minimum exonic length(default: 200)"
    break_n: ": the least number of Ns to break a scaffold in the raw assembly (default: 1)"
    size_you_want: ": the size of a kmer(<=32; <=0 if you do not want to use kmer. default: 23)"
    cs: ": output the genomic sequence involved in connections in file $prefix_cs.fa (default: not used)"
    verbose_mode_default: ": verbose mode (default: false)"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
    File out_cs = "${in_cs}"
  }
}
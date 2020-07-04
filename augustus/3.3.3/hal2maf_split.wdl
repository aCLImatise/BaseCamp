version 1.0

task Hal2mafSplit.pl {
  input {
    String? hal_file
    String? ref_genome
    Boolean? keep_dupes
    Boolean? keep_ancestors
    String? ref_sequence
    String? outdir
    String? chunksize
    String? overlap
    String? cpus
    String? hal_exec_dir
    String? no_split_list
  }
  command <<<
    hal2maf_split.pl \
      ~{if defined(hal_file) then ("--halfile " +  '"' + hal_file + '"') else ""} \
      ~{if defined(ref_genome) then ("--refGenome " +  '"' + ref_genome + '"') else ""} \
      ~{true="--keepDupes" false="" keep_dupes} \
      ~{true="--keepAncestors" false="" keep_ancestors} \
      ~{if defined(ref_sequence) then ("--refSequence " +  '"' + ref_sequence + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(hal_exec_dir) then ("--hal_exec_dir " +  '"' + hal_exec_dir + '"') else ""} \
      ~{if defined(no_split_list) then ("--no_split_list " +  '"' + no_split_list + '"') else ""}
  >>>
  parameter_meta {
    hal_file: "F is the input hal file"
    ref_genome: "S is the name of the reference genome"
    keep_dupes: "keep duplicates, i.e. alignments of a sequence with itself (default: off)"
    keep_ancestors: "export ancestral sequences (default: off)"
    ref_sequence: "S is the name of the reference sequence within the reference genome (default: all sequences in the reference genome)"
    outdir: "D is the directory to which the output MAF files are written (default: current directory)"
    chunksize: "size of the aligment chunk. N is the number of bases in the reference genome that are covered by the alignment chunks (default: 2500000)"
    overlap: "overlap between to consecutive alignment chunks. N is the nunber of overlapping bases in the reference genome (default: 500000)"
    cpus: "number of cpus (default: 1)"
    hal_exec_dir: "D is the path to the hal executables. If not specified it must be in \$PATH environment variable."
    no_split_list: "list of 'genic' intervals. The splitting of the alignment is not allowed within these regions.  L is a file with the following format: seqname <tab> start <tab> end <newline>. Example: chr2 120567671 120601255 chr2 120604238 120609520 chr5 65261850  65335670 chr5 56530780  865308994 ..."
  }
}
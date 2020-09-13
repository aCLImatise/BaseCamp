version 1.0

task Mirabait {
  input {
    File? load_bait_sequences
    File? load_baits_filesonly
    String? set_options_predefined
    File? file_load_paired
    File? load_paired_interleaved
    Int? kmer_length_default
    Int? minimum_number_kmer
    Boolean? use_kmers_dustlike
    Int? set_length_discard
    Boolean? selects_sequences_hit_bait
    Boolean? selects_sequences_hit_hit
    Boolean? checking_reverse_complement
    Boolean? number_use_default
    Boolean? case_change_denote
    Int? length_line_fasta
    File? save_kmer_statistics
    String? change_prefix_namehas
    File? save_sequences_matching
    File? o_sequences_matching
    Directory? use_instead_ofcurrent
    Int? memory_use_computing
  }
  command <<<
    mirabait \
      ~{if defined(load_bait_sequences) then ("-b " +  '"' + load_bait_sequences + '"') else ""} \
      ~{if defined(load_baits_filesonly) then ("-B " +  '"' + load_baits_filesonly + '"') else ""} \
      ~{if defined(set_options_predefined) then ("-j " +  '"' + set_options_predefined + '"') else ""} \
      ~{if defined(file_load_paired) then ("-p " +  '"' + file_load_paired + '"') else ""} \
      ~{if defined(load_paired_interleaved) then ("-P " +  '"' + load_paired_interleaved + '"') else ""} \
      ~{if defined(kmer_length_default) then ("-k " +  '"' + kmer_length_default + '"') else ""} \
      ~{if defined(minimum_number_kmer) then ("-n " +  '"' + minimum_number_kmer + '"') else ""} \
      ~{if (use_kmers_dustlike) then "-d" else ""} \
      ~{if defined(set_length_discard) then ("-D " +  '"' + set_length_discard + '"') else ""} \
      ~{if (selects_sequences_hit_bait) then "-i" else ""} \
      ~{if (selects_sequences_hit_hit) then "-I" else ""} \
      ~{if (checking_reverse_complement) then "-r" else ""} \
      ~{if (number_use_default) then "-t" else ""} \
      ~{if (case_change_denote) then "-c" else ""} \
      ~{if defined(length_line_fasta) then ("-l " +  '"' + length_line_fasta + '"') else ""} \
      ~{if defined(save_kmer_statistics) then ("-K " +  '"' + save_kmer_statistics + '"') else ""} \
      ~{if defined(change_prefix_namehas) then ("-N " +  '"' + change_prefix_namehas + '"') else ""} \
      ~{if defined(save_sequences_matching) then ("-o " +  '"' + save_sequences_matching + '"') else ""} \
      ~{if defined(o_sequences_matching) then ("-O " +  '"' + o_sequences_matching + '"') else ""} \
      ~{if defined(use_instead_ofcurrent) then ("-T " +  '"' + use_instead_ofcurrent + '"') else ""} \
      ~{if defined(memory_use_computing) then ("-m " +  '"' + memory_use_computing + '"') else ""}
  >>>
  parameter_meta {
    load_bait_sequences: "Load bait sequences from file\\n(multiple -b allowed)"
    load_baits_filesonly: "Load baits from kmer statistics file, not from sequence files.\\nOnly one -B allowed, cannot be combined with -b.\\n(see -K for creating such a file)"
    set_options_predefined: "Set options for predefined job from supplied MIRA library\\nCurrently available jobs:\\nrrna Bait rRNA sequences"
    file_load_paired: "file2  Load paired sequences to search from file1 and file2\\nFiles must contain same number of sequences, sequence\\nnames must be in same order.\\nMultiple -p allowed, but must come before non-paired\\nfiles."
    load_paired_interleaved: "Load paired sequences from file\\nFile must be interleaved: pairs must follow each other,\\nnon-pairs are not allowed.\\nMultiple -p allowed, but must come before non-paired\\nfiles."
    kmer_length_default: "kmer length of bait in bases (<=256, default=31)"
    minimum_number_kmer: "If >0: minimum number of k-mer baits needed (default=1)\\nIf <=0: allowed number of missed kmers over sequence\\nlength"
    use_kmers_dustlike: "Do not use kmers with microrepeats (DUST-like, see also -D)"
    set_length_discard: "Set length of microrepeats in kmers to discard from bait.\\nint > 0 microrepeat len in percentage of kmer length.\\nE.g.: -k 17 -D 67 --> 11.39 bases --> 12 bases.\\nint < 0 microrepeat len in bases.\\nint != 0 implies -d, int=0 turns DUST filter off."
    selects_sequences_hit_bait: "Selects sequences that do not hit bait"
    selects_sequences_hit_hit: "Selects sequences that hit and do not hit bait (to\\ndifferent files)"
    checking_reverse_complement: "No checking of reverse complement direction"
    number_use_default: "Number of threads to use (default=0 -> up to 4 CPU cores)"
    case_change_denote: "No case change of sequence to denote bait hits"
    length_line_fasta: "length of a line (FASTA only, default 0=unlimited)"
    save_kmer_statistics: "Save kmer statistics to 'file' (see also -B)"
    change_prefix_namehas: "Change the prefix 'bait' to <name>\\nHas no effect if -o/-O is used and targets are not\\ndirectories"
    save_sequences_matching: "Save sequences matching bait to path\\nIf path is a directory, write separate files into this\\ndirectory. If not, combine all matching sequences from\\nthe input file(s) into a single file specified by the\\npath."
    o_sequences_matching: "Like -o, but for sequences not matching"
    use_instead_ofcurrent: "Use 'dir' as directory for temporary files instead of\\ncurrent working directory."
    memory_use_computing: "Memory to use for computing kmer statistics\\n0..100 = use percentage of free system memory\\n>100 = amount of MiB to use (e.g. 16384 for 16 GiB)\\nDefault 75 (75% of free system memory)."
  }
  output {
    File out_stdout = stdout()
  }
}
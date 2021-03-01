version 1.0

task Fqtrim {
  input {
    Boolean? rename_reads_using
    Boolean? write_trimmedfiltered_reads
    File? outdir
    Boolean? file_trim_line
    Boolean? trim_given_adapter
    Boolean? trim_given_sequence
    Boolean? disable_polyat_trimming
    Boolean? trim_polyat_ends
    Boolean? output_only_reads
    Boolean? minimum_length_polyat
    Boolean? trim_read_ends
    Boolean? q_sliding_window
    Boolean? q_limit_maximum
    Boolean? maximum_percentage_allowed
    Boolean? minimum_read_length
    Boolean? write_file_listing
    Boolean? s_one
    File? aid_x
    Boolean? write_number_ends
    Boolean? pass_reads_discard
    String? d_mask
    Boolean? collapse_duplicate_reads
    Boolean? use_numcpus_threads
    Boolean? input_phredphred_use
    Boolean? convert_quality_values
    Boolean? disable_read_name
    Boolean? show_verbose_summary
    Boolean? minimum_length_exact
    Boolean? pid_five
    Boolean? pid_three
    Boolean? mism
    Int? match
    Boolean? also_look_complementof
  }
  command <<<
    fqtrim \
      ~{if (rename_reads_using) then "-n" else ""} \
      ~{if (write_trimmedfiltered_reads) then "-o" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (file_trim_line) then "-f" else ""} \
      ~{if (trim_given_adapter) then "-5" else ""} \
      ~{if (trim_given_sequence) then "-3" else ""} \
      ~{if (disable_polyat_trimming) then "-A" else ""} \
      ~{if (trim_polyat_ends) then "-B" else ""} \
      ~{if (output_only_reads) then "-O" else ""} \
      ~{if (minimum_length_polyat) then "-y" else ""} \
      ~{if (trim_read_ends) then "-q" else ""} \
      ~{if (q_sliding_window) then "-w" else ""} \
      ~{if (q_limit_maximum) then "-t" else ""} \
      ~{if (maximum_percentage_allowed) then "-m" else ""} \
      ~{if (minimum_read_length) then "-l" else ""} \
      ~{if (write_file_listing) then "-r" else ""} \
      ~{if (s_one) then "-s1" else ""} \
      ~{if defined(aid_x) then ("--aidx " +  '"' + aid_x + '"') else ""} \
      ~{if (write_number_ends) then "-T" else ""} \
      ~{if (pass_reads_discard) then "-D" else ""} \
      ~{if defined(d_mask) then ("--dmask " +  '"' + d_mask + '"') else ""} \
      ~{if (collapse_duplicate_reads) then "-C" else ""} \
      ~{if (use_numcpus_threads) then "-p" else ""} \
      ~{if (input_phredphred_use) then "-P" else ""} \
      ~{if (convert_quality_values) then "-Q" else ""} \
      ~{if (disable_read_name) then "-M" else ""} \
      ~{if (show_verbose_summary) then "-V" else ""} \
      ~{if (minimum_length_exact) then "-a" else ""} \
      ~{if (pid_five) then "--pid5" else ""} \
      ~{if (pid_three) then "--pid3" else ""} \
      ~{if (mism) then "--mism" else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if (also_look_complementof) then "-R" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rename_reads_using: "rename the reads using the <prefix> followed by a read counter;\\nif -C option was also provided, the suffix \\\"_x<N>\\\" is appended\\n(where <N> is the read duplication count)"
    write_trimmedfiltered_reads: "write the trimmed/filtered reads to file(s) named <input>.<outsuffix>\\nwhich will be created in the current (working) directory (unless --outdir\\nis used); this suffix should include the file extension; if this extension\\nis .gz, .gzip or .bz2 then the output will be compressed accordingly.\\nNOTE: if the input file is '-' (stdin) then this is the full name of the\\noutput file, not just the suffix."
    outdir: ", write the output file(s) to <outdir> directory instead"
    file_trim_line: "file with adapter sequences to trim, each line having this format:\\n[<5_adapter_sequence>][ <3_adapter_sequence>]"
    trim_given_adapter: "trim the given adapter or primer sequence at the 5' end of each read\\n(e.g. -5 CGACAGGTTCAGAGTTCTACAGTCCGACGATC)"
    trim_given_sequence: "trim the given adapter sequence at the 3' end of each read\\n(e.g. -3 TCGTATGCCGTCTTCTGCTTG)"
    disable_polyat_trimming: "disable polyA/T trimming (enabled by default)"
    trim_polyat_ends: "trim polyA/T at both ends (default: only poly-A at 3' end, poly-T at 5')"
    output_only_reads: "output only reads affected by trimming (discard clean reads!)"
    minimum_length_polyat: "minimum length of poly-A/T run to remove (6)"
    trim_read_ends: "trim read ends where the quality value drops below <minq>"
    q_sliding_window: "for -q, sliding window size for calculating avg. quality (default 6)"
    q_limit_maximum: "for -q, limit maximum trimming at either end to <trim_max_len>"
    maximum_percentage_allowed: "maximum percentage of Ns allowed in a read after trimming (default 5)"
    minimum_read_length: "minimum read length after trimming (if the remaining sequence is shorter\\nthan this, the read will be discarded (trashed)(default: 16)"
    write_file_listing: "write a \\\"trimming report\\\" file listing the affected reads with a list\\nof trimming operations"
    s_one: ":  for paired reads, one of the reads (1 or 2) is not being processed\\n(no attempt to trim it) but the pair is discarded if the other read is\\ntrashed by the trimming process"
    aid_x: "can only be given with -r and -f options and it makes all the\\nvector/adapter trimming operations encoded as a,b,c,.. instead of V,\\ncorresponding to the order of adapter sequences in the -f file"
    write_number_ends: "write the number of bases trimmed at 5' and 3' ends after the read names\\nin the FASTA/FASTQ output file(s)"
    pass_reads_discard: "pass reads through a low-complexity (dust) filter and discard any read\\nthat has over 50% of its length masked as low complexity"
    d_mask: "is the same with -D but fqtrim will actually mask the low\\ncomplexity regions with Ns in the output sequence"
    collapse_duplicate_reads: "collapse duplicate reads and append a _x<N>count suffix to the read\\nname (where <N> is the duplication count)"
    use_numcpus_threads: "use <numcpus> CPUs (threads) on the local machine"
    input_phredphred_use: "input is phred64/phred33 (use -P64 or -P33)"
    convert_quality_values: "convert quality values to the other Phred qv type"
    disable_read_name: "disable read name consistency check for paired reads"
    show_verbose_summary: "show verbose trimming summary"
    minimum_length_exact: "minimum length of exact suffix-prefix match with adapter sequence that\\ncan be trimmed at either end of the read (default: 6)"
    pid_five: "minimum percent identity for adapter match at 5' end (default 96.0)"
    pid_three: "minimum percent identity for adapter match at 3' end (default 94.0)"
    mism: "mismatch penalty for scoring the adapter alignment (default 3)"
    match: "reward for scoring the adapter alignment (default 1)"
    also_look_complementof: "also look for terminal alignments with the reverse complement\\nof the adapter sequence(s)"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}
version 1.0

task Metabat {
  input {
    Boolean? i
    Boolean? o
    Boolean? a
    Boolean? arg_minimum_size_contig
    String? maxp
    String? mins
    String? max_edges
    String? p_tnf
    Boolean? no_add
    Boolean? cv_ext
    Boolean? arg_minimum_mean
    String? min_cvs_um
    Boolean? arg_minimum_size_bin
    Boolean? arg_number_use
    Boolean? output_only_sequence
    Boolean? save_cls
    Boolean? unbinned
    Boolean? no_bin_out
    String? seed
    Boolean? _debug_output
    Boolean? _verbose_output
  }
  command <<<
    metabat \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-a" false="" a} \
      ~{true="-m" false="" arg_minimum_size_contig} \
      ~{if defined(maxp) then ("--maxP " +  '"' + maxp + '"') else ""} \
      ~{if defined(mins) then ("--minS " +  '"' + mins + '"') else ""} \
      ~{if defined(max_edges) then ("--maxEdges " +  '"' + max_edges + '"') else ""} \
      ~{if defined(p_tnf) then ("--pTNF " +  '"' + p_tnf + '"') else ""} \
      ~{true="--noAdd" false="" no_add} \
      ~{true="--cvExt" false="" cv_ext} \
      ~{true="-x" false="" arg_minimum_mean} \
      ~{if defined(min_cvs_um) then ("--minCVSum " +  '"' + min_cvs_um + '"') else ""} \
      ~{true="-s" false="" arg_minimum_size_bin} \
      ~{true="-t" false="" arg_number_use} \
      ~{true="-l" false="" output_only_sequence} \
      ~{true="--saveCls" false="" save_cls} \
      ~{true="--unbinned" false="" unbinned} \
      ~{true="--noBinOut" false="" no_bin_out} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-d" false="" _debug_output} \
      ~{true="-v" false="" _verbose_output}
  >>>
  parameter_meta {
    i: "[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]"
    o: "[ --outFile ] arg              Base file name and path for each bin. The default output is fasta format. Use -l option to output only contig names [Mandatory]."
    a: "[ --abdFile ] arg              A file having mean and variance of base coverage depth (tab delimited;  the first column should be contig names, and the first row will be  considered as the header and be skipped) [Optional]."
    arg_minimum_size_contig: "[ --minContig ] arg (=2500)    Minimum size of a contig for binning (should be >=1500)."
    maxp: "(=95)                  Percentage of 'good' contigs considered for binning decided by connection among contigs. The greater, the more sensitive."
    mins: "(=60)                  Minimum score of a edge for binning (should be between 1 and 99). The  greater, the more specific."
    max_edges: "(=200)             Maximum number of edges per node. The greater, the more sensitive."
    p_tnf: "(=0)                   TNF probability cutoff for building TNF graph. Use it to skip the  preparation step. (0: auto)."
    no_add: "Turning off additional binning for lost or small contigs."
    cv_ext: "When a coverage file without variance (from third party tools) is used  instead of abdFile from jgi_summarize_bam_contig_depths."
    arg_minimum_mean: "[ --minCV ] arg (=1)           Minimum mean coverage of a contig in each library for binning."
    min_cvs_um: "(=1)               Minimum total effective mean coverage of a contig (sum of depth over  minCV) for binning."
    arg_minimum_size_bin: "[ --minClsSize ] arg (=200000) Minimum size of a bin as the output."
    arg_number_use: "[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores)."
    output_only_sequence: "[ --onlyLabel ]                Output only sequence labels as a list in a column without sequences."
    save_cls: "Save cluster memberships as a matrix format"
    unbinned: "Generate [outFile].unbinned.fa file for unbinned contigs"
    no_bin_out: "No bin output. Usually combined with --saveCls to check only contig  memberships"
    seed: "(=0)                   For exact reproducibility. (0: use random seed)"
    _debug_output: "[ --debug ]                    Debug output"
    _verbose_output: "[ --verbose ]                  Verbose output"
  }
}
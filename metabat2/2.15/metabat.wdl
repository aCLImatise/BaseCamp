version 1.0

task Metabat {
  input {
    Boolean? i
    File? arg_base_file
    Boolean? arg_file_having
    Boolean? arg_minimum_size_contig
    Int? maxp
    Int? mins
    Int? max_edges
    Int? p_tnf
    Boolean? no_add
    Boolean? cv_ext
    Boolean? arg_minimum_mean
    Int? min_cvs_um
    Boolean? arg_minimum_size_bin
    Boolean? arg_number_use
    Boolean? output_only_sequence
    Boolean? save_cls
    Boolean? unbinned
    Boolean? no_bin_out
    Boolean? _debug_output
    Boolean? _verbose_output
    String memberships
  }
  command <<<
    metabat \
      ~{memberships} \
      ~{if (i) then "-i" else ""} \
      ~{if (arg_base_file) then "-o" else ""} \
      ~{if (arg_file_having) then "-a" else ""} \
      ~{if (arg_minimum_size_contig) then "-m" else ""} \
      ~{if defined(maxp) then ("--maxP " +  '"' + maxp + '"') else ""} \
      ~{if defined(mins) then ("--minS " +  '"' + mins + '"') else ""} \
      ~{if defined(max_edges) then ("--maxEdges " +  '"' + max_edges + '"') else ""} \
      ~{if defined(p_tnf) then ("--pTNF " +  '"' + p_tnf + '"') else ""} \
      ~{if (no_add) then "--noAdd" else ""} \
      ~{if (cv_ext) then "--cvExt" else ""} \
      ~{if (arg_minimum_mean) then "-x" else ""} \
      ~{if defined(min_cvs_um) then ("--minCVSum " +  '"' + min_cvs_um + '"') else ""} \
      ~{if (arg_minimum_size_bin) then "-s" else ""} \
      ~{if (arg_number_use) then "-t" else ""} \
      ~{if (output_only_sequence) then "-l" else ""} \
      ~{if (save_cls) then "--saveCls" else ""} \
      ~{if (unbinned) then "--unbinned" else ""} \
      ~{if (no_bin_out) then "--noBinOut" else ""} \
      ~{if (_debug_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    i: "[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]"
    arg_base_file: "[ --outFile ] arg              Base file name and path for each bin. The default output is fasta format.\\nUse -l option to output only contig names [Mandatory]."
    arg_file_having: "[ --abdFile ] arg              A file having mean and variance of base coverage depth (tab delimited;\\nthe first column should be contig names, and the first row will be\\nconsidered as the header and be skipped) [Optional]."
    arg_minimum_size_contig: "[ --minContig ] arg (=2500)    Minimum size of a contig for binning (should be >=1500)."
    maxp: "(=95)                  Percentage of 'good' contigs considered for binning decided by connection\\namong contigs. The greater, the more sensitive."
    mins: "(=60)                  Minimum score of a edge for binning (should be between 1 and 99). The\\ngreater, the more specific."
    max_edges: "(=200)             Maximum number of edges per node. The greater, the more sensitive."
    p_tnf: "(=0)                   TNF probability cutoff for building TNF graph. Use it to skip the\\npreparation step. (0: auto)."
    no_add: "Turning off additional binning for lost or small contigs."
    cv_ext: "When a coverage file without variance (from third party tools) is used\\ninstead of abdFile from jgi_summarize_bam_contig_depths."
    arg_minimum_mean: "[ --minCV ] arg (=1)           Minimum mean coverage of a contig in each library for binning."
    min_cvs_um: "(=1)               Minimum total effective mean coverage of a contig (sum of depth over\\nminCV) for binning."
    arg_minimum_size_bin: "[ --minClsSize ] arg (=200000) Minimum size of a bin as the output."
    arg_number_use: "[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores)."
    output_only_sequence: "[ --onlyLabel ]                Output only sequence labels as a list in a column without sequences."
    save_cls: "Save cluster memberships as a matrix format"
    unbinned: "Generate [outFile].unbinned.fa file for unbinned contigs"
    no_bin_out: "No bin output. Usually combined with --saveCls to check only contig"
    _debug_output: "[ --debug ]                    Debug output"
    _verbose_output: "[ --verbose ]                  Verbose output"
    memberships: "--seed arg (=0)                   For exact reproducibility. (0: use random seed)"
  }
  output {
    File out_stdout = stdout()
    File out_arg_base_file = "${in_arg_base_file}"
  }
}
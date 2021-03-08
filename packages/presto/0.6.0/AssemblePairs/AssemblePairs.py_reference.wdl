version 1.0

task AssemblePairspyReference {
  input {
    Array[Int] ordered_list_containingheadprimary
    Array[Int] ordered_list_containingtailsecondary
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    Int? nproc
    String? coord
    String? rc
    Array[String] one_f
    Array[String] two_f
    File? fasta_file_containing
    Float? mini_dent
    Float? evalue
    Int? max_hits
    Boolean? fill
    String? aligner
    File? exec
    File? db_exec
  }
  command <<<
    AssemblePairs_py reference \
      ~{if defined(ordered_list_containingheadprimary) then ("-1 " +  '"' + ordered_list_containingheadprimary + '"') else ""} \
      ~{if defined(ordered_list_containingtailsecondary) then ("-2 " +  '"' + ordered_list_containingtailsecondary + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(coord) then ("--coord " +  '"' + coord + '"') else ""} \
      ~{if defined(rc) then ("--rc " +  '"' + rc + '"') else ""} \
      ~{if defined(one_f) then ("--1f " +  '"' + one_f + '"') else ""} \
      ~{if defined(two_f) then ("--2f " +  '"' + two_f + '"') else ""} \
      ~{if defined(fasta_file_containing) then ("-r " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(mini_dent) then ("--minident " +  '"' + mini_dent + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(max_hits) then ("--maxhits " +  '"' + max_hits + '"') else ""} \
      ~{if (fill) then "--fill" else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""} \
      ~{if defined(db_exec) then ("--dbexec " +  '"' + db_exec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ordered_list_containingheadprimary: "An ordered list of FASTA/FASTQ files containing\\nhead/primary sequences. (default: None)"
    ordered_list_containingtailsecondary: "An ordered list of FASTA/FASTQ files containing\\ntail/secondary sequences. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    coord: "The format of the sequence identifier which defines\\nshared coordinate information across paired ends.\\n(default: presto)"
    rc: "Specify which read to reverse complement before\\nstitching. (default: tail)"
    one_f: "Specify annotation fields to copy from head records\\ninto assembled record. (default: None)"
    two_f: "Specify annotation fields to copy from tail records\\ninto assembled record. (default: None)"
    fasta_file_containing: "A FASTA file containing the reference sequence\\ndatabase. (default: None)"
    mini_dent: "Minimum identity of the assembled sequence required to\\ncall a valid reference guided assembly (between 0 and\\n1). (default: 0.5)"
    evalue: "Minimum E-value for reference alignment for both the\\nhead and tail sequence. (default: 1e-05)"
    max_hits: "Maximum number of hits from the reference alignment to\\ncheck for matching head and tail sequence assignments.\\n(default: 100)"
    fill: "Specify to change the behavior of inserted characters\\nwhen the head and tail sequences do not overlap during\\nreference guided assembly. If specified, this will\\nresult in inserted of the V region reference sequence\\ninstead of a sequence of Ns in the non-overlapping\\nregion. Warning: you could end up making chimeric\\nsequences by using this option. (default: False)"
    aligner: "The local alignment tool to use. Must be one blastn\\n(blast+ nucleotide) or usearch (ublast algorithm).\\n(default: usearch)"
    exec: "The name or location of the aligner executable file\\n(blastn or usearch). Defaults to the name specified by\\nthe --aligner argument. (default: None)"
    db_exec: "The name or location of the executable file that\\nbuilds the reference database. This defaults to\\nmakeblastdb when blastn is specified to the --aligner\\nargument, and usearch when usearch is specified.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task AssemblePairspyJoin {
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
    Int? gap
  }
  command <<<
    AssemblePairs_py join \
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
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""}
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
    gap: "Number of N characters to place between ends.\\n(default: 0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
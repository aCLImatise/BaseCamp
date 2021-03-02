version 1.0

task BuildConsensuspy {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    Int? nproc
    Int? minimum_number_sequences
    String? bf
    Int? consensus_quality_score
    Int? freq
    Int? max_gap
    String? pf
    String? pr_cons
    Array[String] cf
    String? act
    Boolean? dep
    Int? max_div
    Int? max_error
    String consensus_pass
    String consensus_fail
    String primer
    String pr_count
    String annotations_dot
    String pr_freq
    String cons_count
  }
  command <<<
    BuildConsensus_py \
      ~{consensus_pass} \
      ~{consensus_fail} \
      ~{primer} \
      ~{pr_count} \
      ~{annotations_dot} \
      ~{pr_freq} \
      ~{cons_count} \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(minimum_number_sequences) then ("-n " +  '"' + minimum_number_sequences + '"') else ""} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(consensus_quality_score) then ("-q " +  '"' + consensus_quality_score + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(max_gap) then ("--maxgap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(pf) then ("--pf " +  '"' + pf + '"') else ""} \
      ~{if defined(pr_cons) then ("--prcons " +  '"' + pr_cons + '"') else ""} \
      ~{if defined(cf) then ("--cf " +  '"' + cf + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if (dep) then "--dep" else ""} \
      ~{if defined(max_div) then ("--maxdiv " +  '"' + max_div + '"') else ""} \
      ~{if defined(max_error) then ("--maxerror " +  '"' + max_error + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    minimum_number_sequences: "The minimum number of sequences needed to define a\\nvalid consensus. (default: 1)"
    bf: "Position of description barcode field to group\\nsequences by. (default: BARCODE)"
    consensus_quality_score: "Consensus quality score cut-off under which an\\nambiguous character is assigned; does not apply when\\nquality scores are unavailable. (default: 0)"
    freq: "Fraction of character occurrences under which an\\nambiguous character is assigned. (default: 0.6)"
    max_gap: "If specified, this defines a cut-off for the frequency\\nof allowed gap values for each position. Positions\\nexceeding the threshold are deleted from the\\nconsensus. If not defined, positions are always\\nretained. (default: None)"
    pf: "Specifies the field name of the primer annotations\\n(default: None)"
    pr_cons: "Specify to define a minimum primer frequency required\\nto assign a consensus primer, and filter out sequences\\nwith minority primers from the consensus building\\nstep. (default: None)"
    cf: "Specifies a set of additional annotation fields to\\ncopy into the consensus sequence annotations.\\n(default: None)"
    act: "[{min,max,sum,set,majority} ...]\\nList of actions to take for each copy field which\\ndefines how each annotation will be combined into a\\nsingle value. The actions \\\"min\\\", \\\"max\\\", \\\"sum\\\" perform\\nthe corresponding mathematical operation on numeric\\nannotations. The action \\\"set\\\" combines annotations\\ninto a comma delimited list of unique values and adds\\nan annotation named <FIELD>_COUNT specifying the count\\nof each item in the set. The action \\\"majority\\\" assigns\\nthe most frequent annotation to the consensus\\nannotation and adds an annotation named <FIELD>_FREQ\\nspecifying the frequency of the majority value.\\n(default: None)"
    dep: "Specify to calculate consensus quality with a non-\\nindependence assumption (default: False)"
    max_div: "Specify to calculate the nucleotide diversity of each\\nread group (average pairwise error rate) and remove\\ngroups exceeding the given diversity threshold.\\nDiversity is calculate for all positions within the\\nread group, ignoring any character filtering imposed\\nby the -q, --freq and --maxgap arguments. Mutually\\nexclusive with --maxerror. (default: None)"
    max_error: "Specify to calculate the error rate of each read group\\n(rate of mismatches from consensus) and remove groups\\nexceeding the given error threshold. The error rate is\\ncalculated against the final consensus sequence, which\\nmay include masked positions due to the -q and --freq\\narguments and may have deleted positions due to the\\n--maxgap argument. Mutually exclusive with --maxdiv.\\n(default: None)"
    consensus_pass: "consensus reads."
    consensus_fail: "raw reads failing consensus filtering criteria."
    primer: "a comma delimited list of unique primer annotations found within the\\nbarcode read group."
    pr_count: "a comma delimited list of the corresponding counts of unique primer"
    annotations_dot: "PRCONS"
    pr_freq: "the frequency of the majority primer."
    cons_count: "the count of reads within the barcode read group which contributed to\\nthe consensus sequence. This is the total size of the read group,\\nminus sequence excluded due to user defined filtering criteria.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
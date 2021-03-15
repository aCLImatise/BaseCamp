version 1.0

task Meryllookup {
  input {
    Int? sequence
    Boolean? output_
    Boolean? min
    Boolean? max
    Int? threads
    String? memory
    Boolean? existence
    Boolean? dump
    Boolean? include
    String speed_dot
  }
  command <<<
    meryl_lookup \
      ~{speed_dot} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{if (output_) then "-output" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if (existence) then "-existence" else ""} \
      ~{if (dump) then "-dump" else ""} \
      ~{if (include) then "-include" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meryl:1.2--he1b5a44_0"
  }
  parameter_meta {
    sequence: "[<input2.fasta>] \\"
    output_: "<output1>      [<output2>]"
    min: "m    Ignore kmers with value below m"
    max: "m    Ignore kmers with value above m"
    threads: "Number of threads to use when constructing lookup table."
    memory: "Don't use more than m GB memory"
    existence: "Report a tab-delimited line for each sequence showing the number of kmers\\nin the sequence, in the database, and in both.\\nMultiple input -mers may be supplied.  If no output is supplied, output is written\\nto stdout.\\noutput:  seqName <tab> mersInSeq <tab> mersInDB1 <tab> mersInSeq&DB1 [ <tab> mersInDB2 <tab> mersInSeq&DB2 ... ]\\nseqName      - name of the sequence\\nmersInSeq    - number of mers in the sequence\\nmersInDB     - number of mers in the meryl database\\nmersInSeq&DB - number of mers in the sequence that are\\nalso in the database"
    dump: "Report a tab-delimited line reporting each kmer in the input sequences, in\\norder, annotated with the value of the kmer in the input database.  If the kmer\\ndoes not exist in the database its value will be reported as zero.\\nOnly one input may be supplied.  If no output is supplied, output is written\\nto stdout.\\noutput:  seqName <tab> seqId <tab> seqPos <tab> exists <tab> fwd-mer <tab> fwd-val <tab> rev-mer <tab> rev-val\\nseqName    - name of the sequence this kmer is from\\nseqId      - numeric version of the seqName (0-based)\\nseqPos     - start position (0-based) of the kmer in the sequence\\nexists     - 'T' if the kmer exists in the database, 'F' if it does not\\nfwd-mer    - forward mer sequence\\nfwd-val    - value of the forward mer in the database\\nrev-mer    - reverse mer sequence\\nrev-val    - value of the reverse mer in the database"
    include: "Extract sequences containing (-include) or not containing (-exclude) kmers in\\nany input database.  Output sequences are written in the same format as the input\\nsequences, with the number of kmers found added to the name.\\nIf two input files are supplied, the corresponding sequences are treated as a pair,\\nand two output files MUST be supplied.\\noutput:  sequence given format (fasta or fastq) with the number of overlapping kmers appended\\nif pairs of sequences are given, R1 will be stdout and R2 be named as <output.r2>\\n<output.r2> will be automatically compressed if ends with .gz, .bz2, or xs\\nseqName    - name of the sequence this kmer is from\\nmersInBoth - number of mers in both sequence and in the database"
    speed_dot: "If the lookup table requires more memory than allowed, the program"
  }
  output {
    File out_stdout = stdout()
  }
}
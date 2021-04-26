version 1.0

task Meryllookup {
  input {
    Int? sequence
    Boolean? output_
    Boolean? bed
    Boolean? wig_count
    Boolean? wig_depth
    Boolean? existence
    Boolean? exclude
    String report_type
  }
  command <<<
    meryl_lookup \
      ~{report_type} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{if (output_) then "-output" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (wig_count) then "-wig-count" else ""} \
      ~{if (wig_depth) then "-wig-depth" else ""} \
      ~{if (existence) then "-existence" else ""} \
      ~{if (exclude) then "-exclude" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meryl:1.3--h1b792b2_0"
  }
  parameter_meta {
    sequence: "[<input2.fasta>] \\"
    output_: "<output1>      [<output2>] \\"
    bed: ":\\nGenerate a BED format file showing the location of kmers in\\nany input database on each sequence in 'input1.fasta'."
    wig_count: ":\\nGenerate a WIGGLE format file showing the multiplicity of the\\nkmer starting at each position in the sequence, if it exists in\\nan input kmer database."
    wig_depth: ":\\nGenerate a WIGGLE format file showing the number of kmers in\\nany input database that cover each position in the sequence."
    existence: ":\\nGenerate a tab-delimited line for each input sequence with the\\nnumber of kmers in the sequence, in the database and common to both."
    exclude: ":\\nCopy sequences from 'input1.fasta' (and 'input2.fasta') to the\\ncorresponding output file if the sequence has at least one kmer\\npresent (include) or no kmers present (exclude) in 'input1.meryl'."
    report_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}
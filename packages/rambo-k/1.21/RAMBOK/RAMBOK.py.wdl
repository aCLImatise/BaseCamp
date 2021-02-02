version 1.0

task RAMBOKpy {
  input {
    Int? ref_file_one
    Int? ref_file_two
    Int? name_one
    Int? name_two
    Int? unassigned_one
    Int? unassigned_two
    Int? km_er_sizes
    File? out_path
    Int? amount
    Int? threads
    Int? chunksize
    Int? gap_size
    Int? cut_off_lower
    Int? cut_off_higher
    Boolean? delete_temp
    File? file_type
  }
  command <<<
    RAMBOK_py \
      ~{if defined(ref_file_one) then ("--reffile1 " +  '"' + ref_file_one + '"') else ""} \
      ~{if defined(ref_file_two) then ("--reffile2 " +  '"' + ref_file_two + '"') else ""} \
      ~{if defined(name_one) then ("--name1 " +  '"' + name_one + '"') else ""} \
      ~{if defined(name_two) then ("--name2 " +  '"' + name_two + '"') else ""} \
      ~{if defined(unassigned_one) then ("--unassigned1 " +  '"' + unassigned_one + '"') else ""} \
      ~{if defined(unassigned_two) then ("--unassigned2 " +  '"' + unassigned_two + '"') else ""} \
      ~{if defined(km_er_sizes) then ("--kmersizes " +  '"' + km_er_sizes + '"') else ""} \
      ~{if defined(out_path) then ("--outpath " +  '"' + out_path + '"') else ""} \
      ~{if defined(amount) then ("--amount " +  '"' + amount + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(gap_size) then ("--gapsize " +  '"' + gap_size + '"') else ""} \
      ~{if defined(cut_off_lower) then ("--cutoff_lower " +  '"' + cut_off_lower + '"') else ""} \
      ~{if defined(cut_off_higher) then ("--cutoff_higher " +  '"' + cut_off_higher + '"') else ""} \
      ~{if (delete_temp) then "--delete_temp" else ""} \
      ~{if defined(file_type) then ("--filetype " +  '"' + file_type + '"') else ""}
  >>>
  parameter_meta {
    ref_file_one: "Reference file of species 1 in fasta-format. Should\\npair with name1"
    ref_file_two: "Reference file of species 2 in fasta-format. Should\\npair with name2"
    name_one: "Name of species 1"
    name_two: "Name of species 2"
    unassigned_one: "Fasta- or fastq-file containing mixed reads."
    unassigned_two: "Fasta- or fastq-file containing mixed reads, only\\nrequired in paired end mode."
    km_er_sizes: "Order of Markov-Chain/kmer length. Enter as range\\n(e.g. 4:8) or list (e.g. 4,6,8) or integer (e.g. 8).\\nDefault = 8"
    out_path: "Folder to write results to. Default = $name1_$name2/\\nin your working directory"
    amount: "Number of reads to be simulated, default = 50000"
    threads: "Number of Threads to use"
    chunksize: "Size of chunks created at a time for simulation,\\ndefault = 100000. Only change if you know what you are\\ndoing!"
    gap_size: "Estimated size of gapsize in case of paired end reads,\\ndefault = 1"
    cut_off_lower: "Lower cutoff: Output only reads with a score lower\\nthan or equal to this value, use m1 for -1"
    cut_off_higher: "Higher cutoff: Output only reads with a score higher\\nthan or equal to this value, use m1 for -1"
    delete_temp: "\\Delete temporary files. Calculations will start from\\nbeginning next time."
    file_type: "Type of your input reads. fasta or fastq, default =\\nfastq\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}
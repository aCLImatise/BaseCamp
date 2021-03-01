version 1.0

task TETyperpy {
  input {
    String? out_prefix
    String? ref
    File? ref_db
    Int? fq_one
    Int? fq_two
    Int? fq_one_two
    File? bam
    String? assembly
    String? spades_params
    File? struct_profiles
    File? snp_profiles
    Int? flank_len
    Int? min_reads
    Int? min_each_strand
    Int? min_mapped_len
    Int? min_qual
    Int? show_region
    Int? threads
    String? verbosity
    File? no_overwrite
  }
  command <<<
    TETyper_py \
      ~{if defined(out_prefix) then ("--outprefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(ref_db) then ("--refdb " +  '"' + ref_db + '"') else ""} \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(fq_one_two) then ("--fq12 " +  '"' + fq_one_two + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(spades_params) then ("--spades_params " +  '"' + spades_params + '"') else ""} \
      ~{if defined(struct_profiles) then ("--struct_profiles " +  '"' + struct_profiles + '"') else ""} \
      ~{if defined(snp_profiles) then ("--snp_profiles " +  '"' + snp_profiles + '"') else ""} \
      ~{if defined(flank_len) then ("--flank_len " +  '"' + flank_len + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_each_strand) then ("--min_each_strand " +  '"' + min_each_strand + '"') else ""} \
      ~{if defined(min_mapped_len) then ("--min_mapped_len " +  '"' + min_mapped_len + '"') else ""} \
      ~{if defined(min_qual) then ("--min_qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(show_region) then ("--show_region " +  '"' + show_region + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (no_overwrite) then "--no_overwrite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_prefix: "Prefix to use for output files. Required."
    ref: "Reference sequence in fasta format. If not already\\nindexed with bwa, this will be created automatically.\\nA blast database is also required, again this will be\\ncreated automatically if it does not already exist.\\nRequired."
    ref_db: "Blast database corresponding to reference file (this\\nargument is only needed if the blast database was\\ncreated with a different name)."
    fq_one: "Forward reads. Can be gzipped."
    fq_two: "Reverse reads. Can be gzipped."
    fq_one_two: "Interleaved forward and reverse reads."
    bam: "Bam file containing reads mapped to the given\\nreference. If the reads have already been mapped, this\\noption saves time compared to specifying the reads in\\nfastq format. If this option is specified then --fq*\\nare ignored."
    assembly: "Use this assembly (fasta format) for detecting\\nstructural variants instead of generating a new one.\\nThis option saves time if an assembly is already\\navailable."
    spades_params: "Additional parameters for running spades assembly.\\nEnclose in quotes and precede with a space. Default: \\\"\\n--cov-cutoff auto --disable-rr\\\". Ignored if --assembly\\nis specified."
    struct_profiles: "File containing known structural variants. Tab\\nseparated format with two columns. First column is\\nvariant name. Second column contains a list of\\nsequence ranges representing deletions relative to the\\nreference, or \\\"none\\\" for no deletions. Each range\\nshould be written as \\\"startpos-endpos\\\", with multiple\\nranges ordered by start position and separated by a\\n\\\"|\\\" with no extra whitespace."
    snp_profiles: "File containing known SNP profiles. Tab separated\\nformat with three columns. First column: variant name,\\nsecond column: homozygous SNPs, third column:\\nheterozygous SNPs. SNPs should be written as\\n\\\"refPOSalt\\\", where \\\"POS\\\" is the position of that SNP\\nwithin the reference, \\\"ref\\\" is the reference base at\\nthat position (A, C, G or T), and \\\"alt\\\" is the variant\\nbase at that position (A, C, G or T for a homozygous\\nSNP; M, R, W, S, Y or K for a heterozygous SNP).\\nMultiple SNPs of the same type (homozygous or\\nheterozygous) should be ordered by position and\\nseparated by a \\\"|\\\". \\\"none\\\" indicates no SNPs of the\\ngiven type."
    flank_len: "Length of flanking region to extract. Required."
    min_reads: "Minimum read number for including a specific flanking\\nsequence. Default 10."
    min_each_strand: "Minimum read number for each strand for including a\\nspecific flanking sequence. Default 1."
    min_mapped_len: "Minimum length of mapping for a read to be used in\\ndetermining flanking sequences. Higher values are more\\nrobust to spurious mapping. Lower values will recover\\nmore reads. Default 30."
    min_qual: "Minimum quality value across extracted flanking\\nsequence. Default 10."
    show_region: "Display presence/absence for a specific region of\\ninterest within the reference (e.g. to display blaKPC\\npresence/absence with the Tn4401b-1 reference, use\\n\\\"7202-8083\\\")"
    threads: "Number of threads to use for mapping and assembly\\nsteps. Default: 1"
    verbosity: "Verbosity level for logging to stderr. 1 = ERROR, 2 =\\nWARNING, 3 = INFO, 4 = DUBUG. Default: 3."
    no_overwrite: "Flag to prevent accidental overwriting of previous\\noutput files. In this mode, the pipeline checks for a\\nlog file named according to the given output prefix.\\nIf it exists then the pipeline exits without modifying\\nany files.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_no_overwrite = "${in_no_overwrite}"
  }
}
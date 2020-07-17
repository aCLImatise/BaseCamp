version 1.0

task TETyper.py {
  input {
    String? out_prefix
    String? ref
    String? ref_db
    String? fq_one
    String? fq_two
    String? fq_one_two
    String? bam
    String? assembly
    String? spades_params
    String? struct_profiles
    String? snp_profiles
    String? flank_len
    Int? min_reads
    Int? min_each_strand
    Int? min_mapped_len
    Int? min_qual
    String? show_region
    String? threads
    String? verbosity
    Boolean? no_overwrite
  }
  command <<<
    TETyper.py \
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
      ~{true="--no_overwrite" false="" no_overwrite}
  >>>
  parameter_meta {
    out_prefix: "Prefix to use for output files. Required."
    ref: "Reference sequence in fasta format. If not already indexed with bwa, this will be created automatically. A blast database is also required, again this will be created automatically if it does not already exist. Required."
    ref_db: "Blast database corresponding to reference file (this argument is only needed if the blast database was created with a different name)."
    fq_one: "Forward reads. Can be gzipped."
    fq_two: "Reverse reads. Can be gzipped."
    fq_one_two: "Interleaved forward and reverse reads."
    bam: "Bam file containing reads mapped to the given reference. If the reads have already been mapped, this option saves time compared to specifying the reads in fastq format. If this option is specified then --fq* are ignored."
    assembly: "Use this assembly (fasta format) for detecting structural variants instead of generating a new one. This option saves time if an assembly is already available."
    spades_params: "Additional parameters for running spades assembly. Enclose in quotes and precede with a space. Default: \" --cov-cutoff auto --disable-rr\". Ignored if --assembly is specified."
    struct_profiles: "File containing known structural variants. Tab separated format with two columns. First column is variant name. Second column contains a list of sequence ranges representing deletions relative to the reference, or \"none\" for no deletions. Each range should be written as \"startpos-endpos\", with multiple ranges ordered by start position and separated by a \"|\" with no extra whitespace."
    snp_profiles: "File containing known SNP profiles. Tab separated format with three columns. First column: variant name, second column: homozygous SNPs, third column: heterozygous SNPs. SNPs should be written as \"refPOSalt\", where \"POS\" is the position of that SNP within the reference, \"ref\" is the reference base at that position (A, C, G or T), and \"alt\" is the variant base at that position (A, C, G or T for a homozygous SNP; M, R, W, S, Y or K for a heterozygous SNP). Multiple SNPs of the same type (homozygous or heterozygous) should be ordered by position and separated by a \"|\". \"none\" indicates no SNPs of the given type."
    flank_len: "Length of flanking region to extract. Required."
    min_reads: "Minimum read number for including a specific flanking sequence. Default 10."
    min_each_strand: "Minimum read number for each strand for including a specific flanking sequence. Default 1."
    min_mapped_len: "Minimum length of mapping for a read to be used in determining flanking sequences. Higher values are more robust to spurious mapping. Lower values will recover more reads. Default 30."
    min_qual: "Minimum quality value across extracted flanking sequence. Default 10."
    show_region: "Display presence/absence for a specific region of interest within the reference (e.g. to display blaKPC presence/absence with the Tn4401b-1 reference, use \"7202-8083\")"
    threads: "Number of threads to use for mapping and assembly steps. Default: 1"
    verbosity: "Verbosity level for logging to stderr. 1 = ERROR, 2 = WARNING, 3 = INFO, 4 = DUBUG. Default: 3."
    no_overwrite: "Flag to prevent accidental overwriting of previous output files. In this mode, the pipeline checks for a log file named according to the given output prefix. If it exists then the pipeline exits without modifying any files."
  }
}
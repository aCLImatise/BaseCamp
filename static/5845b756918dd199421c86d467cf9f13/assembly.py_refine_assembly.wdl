version 1.0

task AssemblypyRefineAssembly {
  input {
    String? already_realigned_bam
    String? out_bam
    String? out_vcf
    String? novo_params
    Boolean? chr_names
    Boolean? keep_all_reads
    Int? jvm_memory
    File? g_atk_path
    File? novo_align_license_path
    Int? threads
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_fasta
    String in_bam
    String out_fast_a
    String space_dot
    String unambiguous_dot
  }
  command <<<
    assembly_py refine_assembly \
      ~{in_fasta} \
      ~{in_bam} \
      ~{out_fast_a} \
      ~{space_dot} \
      ~{unambiguous_dot} \
      ~{if defined(already_realigned_bam) then ("--already_realigned_bam " +  '"' + already_realigned_bam + '"') else ""} \
      ~{if defined(out_bam) then ("--outBam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(out_vcf) then ("--outVcf " +  '"' + out_vcf + '"') else ""} \
      ~{if defined(novo_params) then ("--novo_params " +  '"' + novo_params + '"') else ""} \
      ~{if (chr_names) then "--chr_names" else ""} \
      ~{if (keep_all_reads) then "--keep_all_reads" else ""} \
      ~{if defined(jvm_memory) then ("--JVMmemory " +  '"' + jvm_memory + '"') else ""} \
      ~{if defined(g_atk_path) then ("--GATK_PATH " +  '"' + g_atk_path + '"') else ""} \
      ~{if defined(novo_align_license_path) then ("--NOVOALIGN_LICENSE_PATH " +  '"' + novo_align_license_path + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  parameter_meta {
    already_realigned_bam: "BAM with reads that are already aligned to inFasta.\\nThis bypasses the alignment process by novoalign and\\ninstead uses the given BAM to make an assembly. When\\nset, outBam is ignored."
    out_bam: "Reads aligned to inFasta. Unaligned and duplicate\\nreads have been removed. GATK indel realigned."
    out_vcf: "GATK genotype calls for genome in inFasta coordinate"
    novo_params: "Alignment parameters for Novoalign."
    chr_names: "[CHR_NAMES [CHR_NAMES ...]]\\nRename all output chromosomes (default: retain\\noriginal chromosome names)"
    keep_all_reads: "Retain all reads in BAM file? Default is to remove\\nunaligned and duplicate reads."
    jvm_memory: "JVM virtual memory size (default: 2g)"
    g_atk_path: "A path containing the GATK jar file. This overrides\\nthe GATK_ENV environment variable or the GATK conda\\npackage. (default: None)"
    novo_align_license_path: "A path to the novoalign.lic file. This overrides the\\nNOVOALIGN_LICENSE_PATH environment variable. (default:\\nNone)"
    threads: "Number of threads (default: 1)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_fasta: "Input assembly, FASTA format, pre-indexed for Picard,\\nSamtools, and Novoalign."
    in_bam: "Input reads, unaligned BAM format."
    out_fast_a: "Output refined assembly, FASTA format, indexed for\\nPicard, Samtools, and Novoalign."
    space_dot: "--min_coverage MIN_COVERAGE"
    unambiguous_dot: "--major_cutoff MAJOR_CUTOFF"
  }
  output {
    File out_stdout = stdout()
  }
}
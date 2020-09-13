version 1.0

task RunSppR {
  input {
    File? c
    File? i
    Int? stepmax_strand_shifts
    String? speak
    Int? max_strand_shifts
    Int? number_parallel_processing
    String? fdr
    Int? n_peak
    Directory? tmpdir
    String? filt_chr
    Directory? o_dir
    File? s_avn
    File? s_avr
    File? sav_d
    File? s_avp
    File? out
    Boolean? rf
    Boolean? clean
    String options
  }
  command <<<
    run_spp_R \
      ~{options} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(stepmax_strand_shifts) then ("-s " +  '"' + stepmax_strand_shifts + '"') else ""} \
      ~{if defined(speak) then ("-speak " +  '"' + speak + '"') else ""} \
      ~{if defined(max_strand_shifts) then ("-x " +  '"' + max_strand_shifts + '"') else ""} \
      ~{if defined(number_parallel_processing) then ("-p " +  '"' + number_parallel_processing + '"') else ""} \
      ~{if defined(fdr) then ("-fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(n_peak) then ("-npeak " +  '"' + n_peak + '"') else ""} \
      ~{if defined(tmpdir) then ("-tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(filt_chr) then ("-filtchr " +  '"' + filt_chr + '"') else ""} \
      ~{if defined(o_dir) then ("-odir " +  '"' + o_dir + '"') else ""} \
      ~{if defined(s_avn) then ("-savn " +  '"' + s_avn + '"') else ""} \
      ~{if defined(s_avr) then ("-savr " +  '"' + s_avr + '"') else ""} \
      ~{if defined(sav_d) then ("-savd " +  '"' + sav_d + '"') else ""} \
      ~{if defined(s_avp) then ("-savp " +  '"' + s_avp + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (rf) then "-rf" else ""} \
      ~{if (clean) then "-clean" else ""}
  >>>
  parameter_meta {
    c: ", full path and name (or URL) of tagAlign/BAM file (can be gzipped) (FILE EXTENSION MUST BE tagAlign.gz, tagAlign, bam or bam.gz)"
    i: ", full path and name (or URL) of tagAlign/BAM file (can be gzipped) (FILE EXTENSION MUST BE tagAlign.gz, tagAlign, bam or bam.gz)"
    stepmax_strand_shifts: ":<step>:<max> , strand shifts at which cross-correlation is evaluated, default=-500:5:1500"
    speak: ", user-defined cross-correlation peak strandshift"
    max_strand_shifts: ":<max>, strand shifts to exclude (This is mainly to avoid region around phantom peak) default=10:(readlen+10)"
    number_parallel_processing: ", number of parallel processing nodes, default=0"
    fdr: ", false discovery rate threshold for peak calling"
    n_peak: ", threshold on number of peaks to call"
    tmpdir: ", Temporary directory (if not specified R function tempdir() is used)"
    filt_chr: ", Pattern to use to remove tags that map to specific chromosomes e.g. _ will remove all tags that map to chromosomes with _ in their name"
    o_dir: "name of output directory (If not set same as ChIP file directory is used)"
    s_avn: "OR -savn NarrowPeak file name (fixed width peaks)"
    s_avr: "OR -savr RegionPeak file name (variable width peaks with regions of enrichment)"
    sav_d: "OR -savd, save Rdata file"
    s_avp: "OR -savp, save cross-correlation plot"
    out: ", append peakshift/phantomPeak results to a file\\nformat:Filename<tab>numReads<tab>estFragLen<tab>corr_estFragLen<tab>PhantomPeak<tab>corr_phantomPeak<tab>argmin_corr<tab>min_corr<tab>Normalized SCC (NSC)<tab>Relative SCC (RSC)<tab>QualityTag)"
    rf: ", if plot or rdata or narrowPeak file exists replace it. If not used then the run is aborted if the plot or Rdata or narrowPeak file exists"
    clean: ", if present will remove the original chip and control files after reading them in. CAUTION: Use only if the script calling run_spp.R is creating temporary files"
    options: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_o_dir = "${in_o_dir}"
  }
}
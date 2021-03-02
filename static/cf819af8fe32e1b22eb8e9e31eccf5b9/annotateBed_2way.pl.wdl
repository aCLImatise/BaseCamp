version 1.0

task AnnotateBed2waypl {
  input {
    File? an_no
    File? genome
    Int? upstream
    Int? downstream
    Boolean? overlap_only
    Int? overlap_percentage
    Boolean? same_strand
    Boolean? reverse_strand
    Boolean? bed_tools_path
    Int? align_start
    String summary_file_dot_txt
  }
  command <<<
    annotateBed_2way_pl \
      ~{summary_file_dot_txt} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if (overlap_only) then "--overlap_only" else ""} \
      ~{if defined(overlap_percentage) then ("--overlap_percentage " +  '"' + overlap_percentage + '"') else ""} \
      ~{if (same_strand) then "--same_strand" else ""} \
      ~{if (reverse_strand) then "--reverse_strand" else ""} \
      ~{if (bed_tools_path) then "--bedtools_path" else ""} \
      ~{if defined(align_start) then ("--align_start " +  '"' + align_start + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    an_no: ": genomic features' bed files, which are used to annotate input bed files, allow multiple files"
    genome: ": genome fasta index file, used to generate random number in each of the chromosome"
    upstream: ":  how many bp upstream from  align start position (Default: 0)"
    downstream: ":   how many bp downstream from  align start position (Default: 0)"
    overlap_only: ": only genomic feature overlapped with .bed region will be taken into account"
    overlap_percentage: ":  minimum percentage of .bed regions overlapped with genomic features will be taken into account (Default: 0)"
    same_strand: ": Require same strandedness.  That is, only counts overlaps on the _same_ strand (Default: both strand)."
    reverse_strand: ": Require different strandedness.  That is, only count overlaps on the _opposite_ strand (Default: both strand)."
    bed_tools_path: ": path to BEDtools/bin/.if not specified in PATH environment variable"
    align_start: ": (Default: --align_start 1)\\n1) extend upstream, downstream from both of 5', 3' border\\n2) extend upstream, downstream from 5' border\\n3) extend upstream, downstream from 3' border\\n4) extend upstream, downstream from center of .bed region\\n"
    summary_file_dot_txt: "Summary statistics about annotation result."
  }
  output {
    File out_stdout = stdout()
  }
}
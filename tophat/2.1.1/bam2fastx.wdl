version 1.0

task Bam2fastx {
  input {
    Boolean? all
    Boolean? paired_reads_expected
    Boolean? convert_unmapped_reads
    Boolean? map_ed_only
    Boolean? p_append_suffixes
    Boolean? ignore_quality_values
    Boolean? color
    Boolean? sam
    Boolean? fast_a
    File? output_file_name
  }
  command <<<
    bam2fastx \
      ~{if (all) then "--all" else ""} \
      ~{if (paired_reads_expected) then "-P" else ""} \
      ~{if (convert_unmapped_reads) then "-Q" else ""} \
      ~{if (map_ed_only) then "--maped-only" else ""} \
      ~{if (p_append_suffixes) then "-N" else ""} \
      ~{if (ignore_quality_values) then "-O" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    all: "convert all reads (mapped and unmapped)\\n(but discarding those flagged as QC failed, unless -Q)"
    paired_reads_expected: "paired reads are expected and converted into two output\\nfiles (see <outfname> comments below)"
    convert_unmapped_reads: "convert unmapped reads even when flagged as QC failed"
    map_ed_only: "convert only mapped reads"
    p_append_suffixes: "for -P, append  /1 and /2 suffixes to read names"
    ignore_quality_values: "ignore the original quality values (OQ tag) and write the\\ncurrent quality values (default is to use OQ data if found)"
    color: "reads are in ABI SOLiD color format"
    sam: "input is a SAM text file (default: BAM input expected)"
    fast_a: "output FASTA records, not FASTQ (discard quality values)"
    output_file_name: "output file name or template (see below)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}
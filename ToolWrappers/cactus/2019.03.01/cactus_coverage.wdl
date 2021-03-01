version 1.0

task CactusCoverage {
  input {
    Boolean? only_contig_one
    Boolean? only_contig_two
    Boolean? depth_by_id
    File? from
  }
  command <<<
    cactus_coverage \
      ~{if (only_contig_one) then "--onlyContig1" else ""} \
      ~{if (only_contig_two) then "--onlyContig2" else ""} \
      ~{if (depth_by_id) then "--depthById" else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    only_contig_one: ": Only print coverage that occurs when a sequence from the fasta is in the contig1 field of the CIGAR."
    only_contig_two: ": Only print coverage that occurs when a sequence from the fasta is in the contig2 field of the CIGAR."
    depth_by_id: ": Assume that headers have an 'id=N|' prefix, where N is an integer. Score coverage depth by the number of different prefixes that align to a region, rather than the total number of alignments. Uses much more memory than the standard mode."
    from: ": Only consider alignments for which one sequence is in fastaFile and the other is in fromFastaFile."
  }
  output {
    File out_stdout = stdout()
  }
}
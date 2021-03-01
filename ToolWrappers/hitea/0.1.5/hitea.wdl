version 1.0

task Hitea {
  input {
    File? input_file_pairsam
    String? restriction_endunuclease_used
    Int? genome_build_used
    File? fasta_format_file_teconsensus
    File? fasta_format_file_repbase
    File? fasta_format_file_polymorphic
    String? referencegenome_copies_tefamily
    String? output_prefix_generating
    Directory? working_directory_are
    Int? mapping_quality_threshold
    Int? minimum_clip_length
    String? remap_unmapped_reads
    File? file_is_experiment
    String? display_help_message
  }
  command <<<
    hitea \
      ~{if defined(input_file_pairsam) then ("-i " +  '"' + input_file_pairsam + '"') else ""} \
      ~{if defined(restriction_endunuclease_used) then ("-e " +  '"' + restriction_endunuclease_used + '"') else ""} \
      ~{if defined(genome_build_used) then ("-g " +  '"' + genome_build_used + '"') else ""} \
      ~{if defined(fasta_format_file_teconsensus) then ("-n " +  '"' + fasta_format_file_teconsensus + '"') else ""} \
      ~{if defined(fasta_format_file_repbase) then ("-b " +  '"' + fasta_format_file_repbase + '"') else ""} \
      ~{if defined(fasta_format_file_polymorphic) then ("-p " +  '"' + fasta_format_file_polymorphic + '"') else ""} \
      ~{if defined(referencegenome_copies_tefamily) then ("-a " +  '"' + referencegenome_copies_tefamily + '"') else ""} \
      ~{if defined(output_prefix_generating) then ("-o " +  '"' + output_prefix_generating + '"') else ""} \
      ~{if defined(working_directory_are) then ("-w " +  '"' + working_directory_are + '"') else ""} \
      ~{if defined(mapping_quality_threshold) then ("-q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if defined(minimum_clip_length) then ("-s " +  '"' + minimum_clip_length + '"') else ""} \
      ~{if defined(remap_unmapped_reads) then ("-r " +  '"' + remap_unmapped_reads + '"') else ""} \
      ~{if defined(file_is_experiment) then ("-x " +  '"' + file_is_experiment + '"') else ""} \
      ~{if defined(display_help_message) then ("-h " +  '"' + display_help_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hitea:0.1.5--0"
  }
  parameter_meta {
    input_file_pairsam: ":          Input file in pairsam format or unsorted-lossless bam format"
    restriction_endunuclease_used: ":          Restriction endunuclease used for the assay (default: '', available:MboI,DpnII,HindIII,Arima,NcoI,NotI)"
    genome_build_used: ":          Genome build to be used (default:hg38, available: hg19)"
    fasta_format_file_teconsensus: ":           fasta format file for TE-consensus sequences"
    fasta_format_file_repbase: ":         fasta format file for Repbase subfamily sequences"
    fasta_format_file_polymorphic: ":          fasta format file for Polymorphic sequences (header should be Family~name format"
    referencegenome_copies_tefamily: ":            reference-genome copies for TE-family members"
    output_prefix_generating: ":       Output prefix while generating report files (default: project)"
    working_directory_are: ":          Working directory where the files are to be written"
    mapping_quality_threshold: ":     Mapping quality threshold for repeat anchored mate on the reference genome (default: 28)"
    minimum_clip_length: ":            Minimum clip length for detecting insertion (should be >=13bp) (default: 20)"
    remap_unmapped_reads: ":           whether to remap unmapped clipped reads to the polymoprhic sequences (default:F)"
    file_is_experiment: ":             whether the file is a WGS experiment (default:F)"
    display_help_message: ":            Display help message"
  }
  output {
    File out_stdout = stdout()
  }
}
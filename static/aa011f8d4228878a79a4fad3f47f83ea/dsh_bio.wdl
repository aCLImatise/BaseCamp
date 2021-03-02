version 1.0

task Dshbio {
  input {
    Boolean? about
    String compress_bed
    String compress_fast_a
    String compress_fast_q
    String compress_gaf
    Int compress_gfa_one
    Int compress_gfa_two
    Int compress_gff_three
    String compress_paf
    String compress_sam
    String compress_vcf
    String create_sequence_dictionary
    String disinter_leave_fast_q
    String down_sample_fast_q
    String down_sample_interleaved_fast_q
    String extract_fast_a
    String extract_fast_q
    Int extract_fast_q_by_length
    String fast_a_to_fast_q
    String fast_q_description
    Int fast_q_sequence_length
    String fast_q_to_fast_a
    String filter_bed
    String filter_fast_a
    String filter_fast_q
    String filter_gaf
    Int filter_gfa_one
    Int filter_gfa_two
    Int filter_gff_three
    String filter_paf
    String filter_sam
    String filter_vcf
    Int gfa_one_to_gfa_two
    String interleave_fast_q
    String reassemble_paths
    String remap_dbsnp
    String remap_phase_set
    String rename_bed_references
    Int rename_gff_three_references
    String rename_vcf_references
    String split_bed
    String split_fast_a
    String split_fast_q
    String split_gaf
    Int split_gff_three
    String split_interleaved_fast_q
    String split_paf
    String split_sam
    String split_vcf
    String traverse_paths
    String truncate_fast_a
    String truncate_paths
    String variant_table_to_vcf
    String vcf_pedigree
    String vcf_samples
  }
  command <<<
    dsh_bio \
      ~{compress_bed} \
      ~{compress_fast_a} \
      ~{compress_fast_q} \
      ~{compress_gaf} \
      ~{compress_gfa_one} \
      ~{compress_gfa_two} \
      ~{compress_gff_three} \
      ~{compress_paf} \
      ~{compress_sam} \
      ~{compress_vcf} \
      ~{create_sequence_dictionary} \
      ~{disinter_leave_fast_q} \
      ~{down_sample_fast_q} \
      ~{down_sample_interleaved_fast_q} \
      ~{extract_fast_a} \
      ~{extract_fast_q} \
      ~{extract_fast_q_by_length} \
      ~{fast_a_to_fast_q} \
      ~{fast_q_description} \
      ~{fast_q_sequence_length} \
      ~{fast_q_to_fast_a} \
      ~{filter_bed} \
      ~{filter_fast_a} \
      ~{filter_fast_q} \
      ~{filter_gaf} \
      ~{filter_gfa_one} \
      ~{filter_gfa_two} \
      ~{filter_gff_three} \
      ~{filter_paf} \
      ~{filter_sam} \
      ~{filter_vcf} \
      ~{gfa_one_to_gfa_two} \
      ~{interleave_fast_q} \
      ~{reassemble_paths} \
      ~{remap_dbsnp} \
      ~{remap_phase_set} \
      ~{rename_bed_references} \
      ~{rename_gff_three_references} \
      ~{rename_vcf_references} \
      ~{split_bed} \
      ~{split_fast_a} \
      ~{split_fast_q} \
      ~{split_gaf} \
      ~{split_gff_three} \
      ~{split_interleaved_fast_q} \
      ~{split_paf} \
      ~{split_sam} \
      ~{split_vcf} \
      ~{traverse_paths} \
      ~{truncate_fast_a} \
      ~{truncate_paths} \
      ~{variant_table_to_vcf} \
      ~{vcf_pedigree} \
      ~{vcf_samples} \
      ~{if (about) then "--about" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    compress_bed: "compress features in BED format to splittable bgzf or bzip2 compression codecs"
    compress_fast_a: "compress sequences in FASTA format to splittable bgzf or bzip2 compression codecs"
    compress_fast_q: "compress sequences in FASTQ format to splittable bgzf or bzip2 compression codecs"
    compress_gaf: "compress alignments in GAF format to splittable bgzf or bzip2 compression codecs"
    compress_gfa_one: "compress assembly in GFA 1.0 format to splittable bgzf or bzip2 compression codecs"
    compress_gfa_two: "compress assembly in GFA 2.0 format to splittable bgzf or bzip2 compression codecs"
    compress_gff_three: "compress features in GFF3 format to splittable bgzf or bzip2 compression codecs"
    compress_paf: "compress alignments in PAF format to splittable bgzf or bzip2 compression codecs"
    compress_sam: "compress alignments in SAM format to splittable bgzf or bzip2 compression codecs"
    compress_vcf: "compress variants and genotypes in VCF format to splittable bgzf or bzip2 compression codecs"
    create_sequence_dictionary: "create a SequenceDictionary from DNA sequences in FASTA format"
    disinter_leave_fast_q: "convert interleaved FASTQ format into first and second sequence files in FASTQ format"
    down_sample_fast_q: "downsample sequences from files in FASTQ format"
    down_sample_interleaved_fast_q: "downsample sequences from a file in interleaved FASTQ format"
    extract_fast_a: "extract matching sequences in FASTA format"
    extract_fast_q: "extract matching sequences in FASTQ format"
    extract_fast_q_by_length: "extract sequences in FASTQ format with a range of lengths"
    fast_a_to_fast_q: "convert DNA sequences in FASTA format to FASTQ format"
    fast_q_description: "output description lines from sequences in FASTQ format"
    fast_q_sequence_length: "output sequence lengths from sequences in FASTQ format"
    fast_q_to_fast_a: "convert sequences in FASTQ format to FASTA format"
    filter_bed: "filter features in BED format"
    filter_fast_a: "filter sequences in FASTA format"
    filter_fast_q: "filter sequences in FASTQ format"
    filter_gaf: "filter alignments in GAF format"
    filter_gfa_one: "filter assembly in GFA 1.0 format"
    filter_gfa_two: "filter assembly in GFA 2.0 format"
    filter_gff_three: "filter features in GFF3 format"
    filter_paf: "filter alignments in PAF format"
    filter_sam: "filter alignments in SAM format"
    filter_vcf: "filter variants in VCF format"
    gfa_one_to_gfa_two: "convert GFA 1.0 format to GFA 2.0 format"
    interleave_fast_q: "convert first and second sequence files in FASTQ format to interleaved FASTQ format"
    reassemble_paths: "reassemble paths in GFA 1.0 format from traversal records"
    remap_dbsnp: "remap Type=String DB flags in VCF format to DB Type=Flag and dbsnp Type=String fields"
    remap_phase_set: "remap Type=String PS phase set ids in VCF format to Type=Integer"
    rename_bed_references: "rename references in BED files"
    rename_gff_three_references: "rename references in GFF3 files"
    rename_vcf_references: "rename references in VCF files"
    split_bed: "split files in BED format"
    split_fast_a: "split files in FASTA format"
    split_fast_q: "split files in FASTQ format"
    split_gaf: "split files in GAF format"
    split_gff_three: "split files in GFF3 format"
    split_interleaved_fast_q: "split files in interleaved FASTQ format"
    split_paf: "split files in PAF format"
    split_sam: "split files in SAM format"
    split_vcf: "split files in VCF format"
    traverse_paths: "traverse paths in GFA 1.0 format"
    truncate_fast_a: "truncate sequences in FASTA format"
    truncate_paths: "truncate paths in GFA 1.0 format"
    variant_table_to_vcf: "convert Ensembl variant table to VCF format"
    vcf_pedigree: "extract a pedigree from VCF format"
    vcf_samples: "extract samples from VCF format"
  }
  output {
    File out_stdout = stdout()
  }
}
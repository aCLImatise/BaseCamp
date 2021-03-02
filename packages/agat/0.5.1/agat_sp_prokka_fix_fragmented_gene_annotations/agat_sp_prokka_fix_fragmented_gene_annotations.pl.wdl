version 1.0

task AgatSpProkkaFixFragmentedGeneAnnotationspl {
  input {
    Boolean? gff
    File? fast_a
    Boolean? db
    String? frags
    Boolean? pseudo
    Boolean? hamap_size
    Int? codon
    Boolean? skip_hamap
    Directory? output_folder_mandatory
    Boolean? verbose_mode_default
    String agat_sp_pro_kk_a_fragmented_gene_annotations_do_tpl
  }
  command <<<
    agat_sp_prokka_fix_fragmented_gene_annotations_pl \
      ~{agat_sp_pro_kk_a_fragmented_gene_annotations_do_tpl} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (db) then "--db" else ""} \
      ~{if defined(frags) then ("--frags " +  '"' + frags + '"') else ""} \
      ~{if (pseudo) then "--pseudo" else ""} \
      ~{if (hamap_size) then "--hamap_size" else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if (skip_hamap) then "--skip_hamap" else ""} \
      ~{if defined(output_folder_mandatory) then ("--output " +  '"' + output_folder_mandatory + '"') else ""} \
      ~{if (verbose_mode_default) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    gff: "Input genome GTF/GFF file. Mandatory."
    fast_a: "Input genome fasta file. Mandatory."
    db: "Input Uniprot fasta file used by prokka. Mandatory."
    frags: "and fix detected FRAGS if not in the same frame"
    pseudo: "Merge detected FRAGS and add the agat_pseudo attribute (value\\nwill be the location of the first stop codon met)."
    hamap_size: "Some protein function are not infered by Uniprot but by Hamap.\\nIn such case the information is retrieved from the web. As hamap\\nprovide a family profile, the protein size if a range. \\\"low\\\"\\noption will use the low value of the range, \\\"middle\\\" option will\\nuse the average of the range, \\\"high\\\" option will the the high\\nvalue of the range. Default \\\"high\\\"."
    codon: "Codon table to use. [default 1]"
    skip_hamap: "For test purpose it could be useful to skip hamap, because it\\nrequires fetching information through internet."
    output_folder_mandatory: "Output folder. Mandatory."
    verbose_mode_default: "verbose mode. Default off."
    agat_sp_pro_kk_a_fragmented_gene_annotations_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_mandatory = "${in_output_folder_mandatory}"
  }
}
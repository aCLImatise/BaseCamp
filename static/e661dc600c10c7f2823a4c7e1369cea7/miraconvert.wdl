version 1.0

task Miraconvert {
  input {
    String? load_type_where
    String? write_sequencesassembly_type
    Boolean? append_target_files
    Boolean? adjust_sequence_casewhen
    Boolean? blind_datareplaces_bases
    Boolean? perform_hard_clip
    Boolean? delete_gap_only
    Boolean? filter_read_groups
    Boolean? make_contigs_only
    File? when_given_selects
    File? n_sorts_output
    Boolean? when_used_inverts
    File? t_quality_offset
    String? string_be_parseduseful
    File? set_default_quality
    String? rename_contigssingletsreads_is
    String? namescheme_renaming_reads
    Boolean? when_converting_reads
    Boolean? print_version_number
    Int? yield_max_clippedpadded
    Boolean? extract_contigs_consensus
    Boolean? recalculate_consensus_valuesand
    File? split_output_multiple
    Boolean? fill_holes_effect
    Int? defines_minimum_quality
    Int? defines_minimum_coverage
    Int? minimum_contig_read
    Int? similar_applies_reads
    Int? minimum_average_contig
    Int? minimum_number_reads
    Int? when_html_number
    String? when_html_character
    String var_32
    String var_33
    String sequences_fasta_file
    String sequences_fastq_file
    String phd
    String fof_n_exp
    String ace
    String sequences_complete_assembly_caf
    String sequences_complete_assembly_maf
    String sam
    String sam_nbb
    Int gff_three
    String wig
    String gc_wig
    String sequences_consensus_toqual
    String sequences_consensus_fastq
    String exp
    String text
    String html
    String tcs
    String hsn_p
    String as_np
    String c_stats
    String cr_list
    String masked_fast_a
    String s_caf
  }
  command <<<
    miraconvert \
      ~{var_32} \
      ~{var_33} \
      ~{sequences_fasta_file} \
      ~{sequences_fastq_file} \
      ~{phd} \
      ~{fof_n_exp} \
      ~{ace} \
      ~{sequences_complete_assembly_caf} \
      ~{sequences_complete_assembly_maf} \
      ~{sam} \
      ~{sam_nbb} \
      ~{gff_three} \
      ~{wig} \
      ~{gc_wig} \
      ~{sequences_consensus_toqual} \
      ~{sequences_consensus_fastq} \
      ~{exp} \
      ~{text} \
      ~{html} \
      ~{tcs} \
      ~{hsn_p} \
      ~{as_np} \
      ~{c_stats} \
      ~{cr_list} \
      ~{masked_fast_a} \
      ~{s_caf} \
      ~{if defined(load_type_where) then ("-f " +  '"' + load_type_where + '"') else ""} \
      ~{if defined(write_sequencesassembly_type) then ("-t " +  '"' + write_sequencesassembly_type + '"') else ""} \
      ~{if (append_target_files) then "-a" else ""} \
      ~{if (adjust_sequence_casewhen) then "-A" else ""} \
      ~{if (blind_datareplaces_bases) then "-b" else ""} \
      ~{if (perform_hard_clip) then "-C" else ""} \
      ~{if (delete_gap_only) then "-d" else ""} \
      ~{if (filter_read_groups) then "-F" else ""} \
      ~{if (make_contigs_only) then "-m" else ""} \
      ~{if defined(when_given_selects) then ("-n " +  '"' + when_given_selects + '"') else ""} \
      ~{if defined(n_sorts_output) then ("-N " +  '"' + n_sorts_output + '"') else ""} \
      ~{if (when_used_inverts) then "-i" else ""} \
      ~{if defined(t_quality_offset) then ("-o " +  '"' + t_quality_offset + '"') else ""} \
      ~{if defined(string_be_parseduseful) then ("-P " +  '"' + string_be_parseduseful + '"') else ""} \
      ~{if defined(set_default_quality) then ("-q " +  '"' + set_default_quality + '"') else ""} \
      ~{if defined(rename_contigssingletsreads_is) then ("-R " +  '"' + rename_contigssingletsreads_is + '"') else ""} \
      ~{if defined(namescheme_renaming_reads) then ("-S " +  '"' + namescheme_renaming_reads + '"') else ""} \
      ~{if (when_converting_reads) then "-T" else ""} \
      ~{if (print_version_number) then "-v" else ""} \
      ~{if defined(yield_max_clippedpadded) then ("-Y " +  '"' + yield_max_clippedpadded + '"') else ""} \
      ~{if (extract_contigs_consensus) then "-M" else ""} \
      ~{if (recalculate_consensus_valuesand) then "-r" else ""} \
      ~{if (split_output_multiple) then "-s" else ""} \
      ~{if (fill_holes_effect) then "-u" else ""} \
      ~{if defined(defines_minimum_quality) then ("-Q " +  '"' + defines_minimum_quality + '"') else ""} \
      ~{if defined(defines_minimum_coverage) then ("-V " +  '"' + defines_minimum_coverage + '"') else ""} \
      ~{if defined(minimum_contig_read) then ("-x " +  '"' + minimum_contig_read + '"') else ""} \
      ~{if defined(similar_applies_reads) then ("-X " +  '"' + similar_applies_reads + '"') else ""} \
      ~{if defined(minimum_average_contig) then ("-y " +  '"' + minimum_average_contig + '"') else ""} \
      ~{if defined(minimum_number_reads) then ("-z " +  '"' + minimum_number_reads + '"') else ""} \
      ~{if defined(when_html_number) then ("-l " +  '"' + when_html_number + '"') else ""} \
      ~{if defined(when_html_character) then ("-c " +  '"' + when_html_character + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    load_type_where: "load this type of project files, where fromtype is:"
    write_sequencesassembly_type: "write the sequences/assembly to this type (multiple\\nmentions of -t are allowed):"
    append_target_files: "Append to target files instead of rewriting"
    adjust_sequence_casewhen: "Do not Adjust sequence case\\nWhen reading formats which define clipping points,\\nand saving to formats which do not have clipping\\ninformation, miraconvert normally adjusts the case of\\nread sequences: lower case for clipped parts, upper\\ncase for unclipped parts of reads.\\nUse -A if you do not want this. See also -C.\\nApplies only to files/formats which do not contain\\ncontigs."
    blind_datareplaces_bases: "Blind data\\nReplaces all bases in reads/contigs with a 'c'"
    perform_hard_clip: "Perform hard clip to reads\\nWhen reading formats which define clipping points, will\\nsave only the unclipped part into the result file.\\nApplies only to files/formats which do not contain\\ncontigs."
    delete_gap_only: "Delete gap only columns\\nWhen output is contigs: delete columns that are\\nentirely gaps (like after having deleted reads during\\nediting in gap4 or similar)\\nWhen output is reads: delete gaps in reads"
    filter_read_groups: "Filter read groups to different files\\nWorks only for input files with readgroups (CAF/MAF)\\n3 (or 4) files generated: one or two for paired, one\\nfor unpaired and one for debris reads.\\nReads in paired file are interlaced by default, use -F\\ntwice to create separate files."
    make_contigs_only: "Make contigs (only for -t = caf or maf)\\nEncase single reads as contig singlets into the CAF/MAF\\nfile."
    when_given_selects: "when given, selects only reads or contigs given by\\nname in that file."
    n_sorts_output: "like -n, but sorts output according to order given\\nin file."
    when_used_inverts: "when -n is used, inverts the selection"
    t_quality_offset: "t   FASTQ quality Offset (only for -f = 'fastq')\\nOffset of quality values in FASTQ file. Default of 33\\nloads Sanger/Phred style files, using 0 tries to\\nautomatically recognise."
    string_be_parseduseful: "String with MIRA parameters to be parsed\\nUseful when setting parameters affecting consensus\\ncalling like -CO:mrpg etc.\\nE.g.: -P \\\"454_SETTINGS -CO:mrpg=3\\\""
    set_default_quality: "Set default quality for bases in file types without\\nquality values. Furthermore, do not stop if expected\\nquality files are missing (e.g. '.fasta')"
    rename_contigssingletsreads_is: "Rename contigs/singlets/reads with given name string\\nto which a counter is appended.\\nKnown bug: will create duplicate names if input\\ncontains contigs/singlets as well as free reads, i.e.\\nreads not in contigs nor singlets."
    namescheme_renaming_reads: "(name)Scheme for renaming reads, important for\\npaired-ends. Only 'solexa' is currently supported."
    when_converting_reads: "When converting single reads, trim/clip away stretches\\nof N and X and ends of reads. Note: remember to use -C to\\nalso perform a hard clip (e.g. with FASTA as output)."
    print_version_number: "Print version number and exit"
    yield_max_clippedpadded: "Yield. Max (clipped/padded) bases to convert.\\nWhen used on reads: output will contain first reads of\\nfile where length of clipped bases totals at least -Y.\\nWhen used on contigs: output will contain first contigs\\nof file where length of padded contigs totals at least\\n-Y."
    extract_contigs_consensus: "Do not extract contigs (or their consensus), but the\\nsequence of the reads they are composed of."
    recalculate_consensus_valuesand: "[cCqf]       Recalculate consensus and / or consensus quality values\\nand / or SNP feature tags.\\n'c' recalc cons & cons qualities (with IUPAC)\\n'C' recalc cons & cons qualities (forcing non-IUPAC)\\n'q' recalc consensus qualities only\\n'f' recalc SNP features\\nNote: only the last of cCq is relevant, f works as a\\nswitch and can be combined with cQq (e.g. \\\"-r C -r f\\\")\\nNote: if the CAF/MAF contains multiple strains,\\nrecalculation of cons & cons qualities is forced, you\\ncan just influence whether IUPACs are used or not."
    split_output_multiple: "split output into multiple files instead of creating a\\nsingle file"
    fill_holes_effect: "'fillUp strain genomes'\\nFill holes in the genome of one strain (N or @)\\nwith sequence from a consensus of other strains\\nTakes effect only with -r and -t gbf or fasta/q\\nin FASTA/Q: bases filled up are in lower case\\nin GBF: bases filled up are in upper case"
    defines_minimum_quality: "Defines minimum quality a consensus base of a strain\\nmust have, consensus bases below this will be 'N'\\nDefault: 0\\nOnly used with -r, and -f is caf/maf and -t is (fasta\\nor gbf)"
    defines_minimum_coverage: "Defines minimum coverage a consensus base of a strain\\nmust have, bases with coverage below this will be 'N'\\nDefault: 0\\nOnly used with -r, and -t is (fasta\\nor gbf)"
    minimum_contig_read: "Minimum contig or unclipped read length\\nWhen loading, discard all contigs / reads with a\\nlength less than this value. Default: 0 (=switched off)\\nNote: not applied to reads in contigs!"
    similar_applies_reads: "Similar to -x but applies only to reads and\\nthen to the clipped length."
    minimum_average_contig: "Minimum average contig coverage\\nWhen loading, discard all contigs with an\\naverage coverage less than this value.\\nDefault: 1"
    minimum_number_reads: "Minimum number of reads in contig\\nWhen loading, discard all contigs with a\\nnumber of reads less than this value.\\nDefault: 0 (=switched off)"
    when_html_number: "when output as text or HTML: number of bases shown in\\none alignment line. Default: 60."
    when_html_character: "when output as text or HTML: character used to pad\\nendgaps. Default: ' ' (blank)"
    var_32: "a complete assembly or single sequences from CAF"
    var_33: "a complete assembly or single sequences from CAF"
    sequences_fasta_file: "sequences from a FASTA file"
    sequences_fastq_file: "sequences from a FASTQ file"
    phd: "sequences from a PHD file"
    fof_n_exp: "sequences in EXP files from file of filenames"
    ace: "sequences or complete assembly to ACE"
    sequences_complete_assembly_caf: "sequences or complete assembly to CAF"
    sequences_complete_assembly_maf: "sequences or complete assembly to MAF"
    sam: "complete assembly to SAM"
    sam_nbb: "like above, but leaving out reference (backbones) in\\nmapping assemblies"
    gff_three: "consensus to GFF3"
    wig: "assembly coverage info to wiggle file"
    gc_wig: "assembly gc content info to wiggle file"
    sequences_consensus_toqual: "sequences or consensus to FASTA file (qualities to\\n.qual)"
    sequences_consensus_fastq: "sequences or consensus to FASTQ file"
    exp: "sequences or complete assembly to EXP files in\\ndirectories. Complete assemblies are suited for gap4\\nimport as directed assembly.\\nNote: using caf2gap to import into gap4 is recommended\\nthough"
    text: "complete assembly to text alignment (only when -f is\\ncaf, maf or gbf)"
    html: "complete assembly to HTML (only when -f is caf, maf or\\ngbf)"
    tcs: "complete assembly to tcs"
    hsn_p: "surrounding of SNP tags (SROc, SAOc, SIOc) to HTML\\n(only when -f is caf, maf or gbf)"
    as_np: "analysis of SNP tags\\n(only when -f is caf, maf or gbf)"
    c_stats: "contig statistics file like from MIRA\\n(only when source contains contigs)"
    cr_list: "contig read list file like from MIRA\\n(only when source contains contigs)"
    masked_fast_a: "reads where sequencing vector is masked out\\n(with X) to FASTA file (qualities to .qual)"
    s_caf: "sequences or complete assembly to single sequences CAF"
  }
  output {
    File out_stdout = stdout()
    File out_n_sorts_output = "${in_n_sorts_output}"
    File out_split_output_multiple = "${in_split_output_multiple}"
  }
}
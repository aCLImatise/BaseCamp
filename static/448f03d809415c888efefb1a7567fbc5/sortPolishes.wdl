version 1.0

task SortPolishes {
  input {
    Boolean? c_sort_cdna
    Boolean? g_sort_genomic
    Boolean? skip_sort_do
    Int? use_using_merge
    Directory? use_directory_temporary
    Boolean? gff_three
    Boolean? be_verbose
  }
  command <<<
    sortPolishes \
      ~{if (c_sort_cdna) then "-c" else ""} \
      ~{if (g_sort_genomic) then "-g" else ""} \
      ~{if (skip_sort_do) then "-M" else ""} \
      ~{if defined(use_using_merge) then ("-m " +  '"' + use_using_merge + '"') else ""} \
      ~{if defined(use_directory_temporary) then ("-t " +  '"' + use_directory_temporary + '"') else ""} \
      ~{if (gff_three) then "-gff3" else ""} \
      ~{if (be_verbose) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c_sort_cdna: "(-C)    Sort by the cDNA index (defline)."
    g_sort_genomic: "(-G)    Sort by the genomic index (defline)."
    skip_sort_do: "Skip the sort, just do a merge."
    use_using_merge: "Use at most M MB of core, using a disk-based merge if memory\\nis exhausted.  Default: 4096."
    use_directory_temporary: "Use directory 'T' for temporary files.  Default is the current\\nworking directory.  The sort unlinks files immediately after\\ncreation: no files will exist, but space will be used."
    gff_three: "Format output as GFF3."
    be_verbose: "Be verbose."
  }
  output {
    File out_stdout = stdout()
  }
}
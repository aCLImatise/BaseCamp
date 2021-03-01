version 1.0

task BpClassifyHitsKingdompl {
  input {
    String description
    String author
  }
  command <<<
    bp_classify_hits_kingdom_pl \
      ~{description} \
      ~{author}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    description: "Will print out the taxonomic distribution (at the kingdom level) for a\\nset of hits against the NR database. By default, this script assumes you\\ndid a search against the protein database (gi_taxid_nuc.dump file).\\nThis expects BLAST files in tabbed -m9 or -m8 format. Output with -m 8\\nor use blast2table.pl to convert (or fastam9_to_table.PLS if using\\nFASTA).\\nInput values:\\n-t/--taxonomy Directory where the taxonomy .dmp files are (from NCBI)\\n-g/--gi       File path of the gi2taxid file (gi_taxid_prot.dmp for proteins\\nor gi_taxid_nucl.dmp if the search was against a nucleid database)\\n-i/--in       The name of the tab delimited -m8/-m9 output files to process\\n-e/--evalue   Provide an E-value cutoff for hits to be considered\\n-z/--zcat     Path to the 'zcat' executable, can also be 'gunzip -c'\\nif no zcat on your system.\\nFlags:\\n-v/--verbose  To turn on verbose messages\\n-h/--help     Display this helpful information\\nThis is intended to be useful starting script, but users may want to\\ncustomize the output and parameters. Note that I am summarizing the\\nkingdoms here and Eukaryota not falling into Metazoa, Viridiplantae, or\\nFungi gets grouped into the general superkingdom Eukaryota for\\nsimplicity. There are comments in the code directing you to where\\nchanges can be made if you wanted to display hits by phylum for example.\\nNote that you must wipe out the cache file 'gi2class' that is created in\\nyour directory after making these changes."
    author: "Jason Stajich jason_at_bioperl_dot_org"
  }
  output {
    File out_stdout = stdout()
  }
}
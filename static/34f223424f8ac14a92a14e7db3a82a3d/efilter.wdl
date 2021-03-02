version 1.0

task Efilter {
  input {
    Boolean? query
    Boolean? sort
    Boolean? days
    Boolean? date_type
    Boolean? min_date
    Boolean? maxdate
    Boolean? field
    Boolean? pairs
    Boolean? spell
    Boolean? pub
    Boolean? journal
    Boolean? released
    Boolean? country
    Boolean? feature
    Boolean? location
    Boolean? molecule
    Boolean? organism
    Boolean? source
    Boolean? status
    Boolean? type
    Boolean? class
    Boolean? kind
    Boolean? pathway
    Boolean? label
  }
  command <<<
    efilter \
      ~{if (query) then "-query" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (days) then "-days" else ""} \
      ~{if (date_type) then "-datetype" else ""} \
      ~{if (min_date) then "-mindate" else ""} \
      ~{if (maxdate) then "-maxdate" else ""} \
      ~{if (field) then "-field" else ""} \
      ~{if (pairs) then "-pairs" else ""} \
      ~{if (spell) then "-spell" else ""} \
      ~{if (pub) then "-pub" else ""} \
      ~{if (journal) then "-journal" else ""} \
      ~{if (released) then "-released" else ""} \
      ~{if (country) then "-country" else ""} \
      ~{if (feature) then "-feature" else ""} \
      ~{if (location) then "-location" else ""} \
      ~{if (molecule) then "-molecule" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (source) then "-source" else ""} \
      ~{if (status) then "-status" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (class) then "-class" else ""} \
      ~{if (kind) then "-kind" else ""} \
      ~{if (pathway) then "-pathway" else ""} \
      ~{if (label) then "-label" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "Query string"
    sort: "Result presentation order"
    days: "Number of days in the past"
    date_type: "Date field abbreviation"
    min_date: "Start of date range"
    maxdate: "End of date range"
    field: "Query words individually in field"
    pairs: "Query overlapping word pairs"
    spell: "Correct misspellings in query"
    pub: "abstract, clinical, english, free, historical,\\njournal, medline, preprint, published, review,\\nstructured"
    journal: "pnas, \\\"j bacteriol\\\", ..."
    released: "last_week, last_month, last_year, prev_years"
    country: "usa:minnesota, united_kingdom, \\\"pacific ocean\\\", ..."
    feature: "gene, mrna, cds, mat_peptide, ..."
    location: "mitochondrion, chloroplast, plasmid, plastid"
    molecule: "genomic, mrna, trna, rrna, ncrna"
    organism: "animals, archaea, bacteria, eukaryotes, fungi,\\nhuman, insects, mammals, plants, prokaryotes,\\nprotists, rodents, viruses"
    source: "genbank, insd, pdb, pir, refseq, swissprot, tpa"
    status: "alive"
    type: "coding, pseudo"
    class: "acceptor, donor, frameshift, indel, intron,\\nmissense, nonsense, synonymous"
    kind: "pathway"
    pathway: "reactome, wikipathways"
    label: "Alias for query step"
  }
  output {
    File out_stdout = stdout()
  }
}
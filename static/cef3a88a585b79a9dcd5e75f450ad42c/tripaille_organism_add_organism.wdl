version 1.0

task TripailleOrganismAddOrganism {
  input {
    String commonCommon
    String abbrAbbr
    String commentComment
    String infraspecificInfraspecificRank
    String infraspecificInfraspecificName
  }
  command <<<
    tripaille organism add_organism \
      ~{if defined(commonCommon) then ("--common " +  '"' + commonCommon + '"') else ""} \
      ~{if defined(abbrAbbr) then ("--abbr " +  '"' + abbrAbbr + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{if defined(infraspecificInfraspecificRank) then ("--infraspecific_rank " +  '"' + infraspecificInfraspecificRank + '"') else ""} \
      ~{if defined(infraspecificInfraspecificName) then ("--infraspecific_name " +  '"' + infraspecificInfraspecificName + '"') else ""}
  >>>
}
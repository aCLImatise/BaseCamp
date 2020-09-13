version 1.0

task TripailleEntityGetEntities {
  input {
    String? entity
    Int? entity_id
  }
  command <<<
    tripaille entity get_entities \
      ~{if defined(entity) then ("--entity " +  '"' + entity + '"') else ""} \
      ~{if defined(entity_id) then ("--entity_id " +  '"' + entity_id + '"') else ""}
  >>>
  parameter_meta {
    entity: "Name of the entity type (e.g. Organism)"
    entity_id: "ID of an entity"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task TripailleEntityGetEntities {
  input {
    String entityEntity
    Int entityEntityId
  }
  command <<<
    tripaille entity get_entities \
      ~{if defined(entityEntity) then ("--entity " +  '"' + entityEntity + '"') else ""} \
      ~{if defined(entityEntityId) then ("--entity_id " +  '"' + entityEntityId + '"') else ""}
  >>>
}
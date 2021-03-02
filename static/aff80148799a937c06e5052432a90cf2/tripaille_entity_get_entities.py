from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Tripaille_Entity_Get_Entities_V0_1_0 = CommandToolBuilder(tool="tripaille_entity_get_entities", base_command=["tripaille", "entity", "get_entities"], inputs=[ToolInput(tag="in_entity", input_type=String(optional=True), prefix="--entity", doc=InputDocumentation(doc="Name of the entity type (e.g. Organism)")), ToolInput(tag="in_entity_id", input_type=Int(optional=True), prefix="--entity_id", doc=InputDocumentation(doc="ID of an entity"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Entity_Get_Entities_V0_1_0().translate("wdl", allow_empty_container=True)


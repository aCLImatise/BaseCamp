from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Entity_Add_Entity_V0_1_0 = CommandToolBuilder(tool="tripaille_entity_add_entity", base_command=["tripaille", "entity", "add_entity"], inputs=[ToolInput(tag="in_params", input_type=String(optional=True), prefix="--params", doc=InputDocumentation(doc="Values to populate the entity fields")), ToolInput(tag="in_entity", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Entity_Add_Entity_V0_1_0().translate("wdl", allow_empty_container=True)


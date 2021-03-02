from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Entity_Get_Fields_V0_1_0 = CommandToolBuilder(tool="tripaille_entity_get_fields", base_command=["tripaille", "entity", "get_fields"], inputs=[ToolInput(tag="in_entity", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Entity_Get_Fields_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Synapse_Get_Annotations_Accessing__V0_1_0 = CommandToolBuilder(tool="synapse_get_annotations_accessing.", base_command=["synapse", "get-annotations", "accessing."], inputs=[ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="")), ToolInput(tag="in_synapse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_annotations", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Get_Annotations_Accessing__V0_1_0().translate("wdl", allow_empty_container=True)


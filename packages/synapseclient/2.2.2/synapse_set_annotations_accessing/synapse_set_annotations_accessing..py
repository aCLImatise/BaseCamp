from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Synapse_Set_Annotations_Accessing__V0_1_0 = CommandToolBuilder(tool="synapse_set_annotations_accessing.", base_command=["synapse", "set-annotations", "accessing."], inputs=[ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_annotations", input_type=String(optional=True), prefix="--annotations", doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="")), ToolInput(tag="in_synapse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_set_annotations", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Set_Annotations_Accessing__V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Synapse_Get_Provenance_Accessing__V0_1_0 = CommandToolBuilder(tool="synapse_get_provenance_accessing.", base_command=["synapse", "get-provenance", "accessing."], inputs=[ToolInput(tag="in_id", input_type=Int(optional=True), prefix="-id", doc=InputDocumentation(doc="")), ToolInput(tag="in_synapse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_provenance", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Get_Provenance_Accessing__V0_1_0().translate("wdl", allow_empty_container=True)


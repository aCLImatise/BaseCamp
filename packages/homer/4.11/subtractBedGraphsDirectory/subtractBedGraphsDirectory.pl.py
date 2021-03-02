from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Subtractbedgraphsdirectory_Pl_V0_1_0 = CommandToolBuilder(tool="subtractBedGraphsDirectory.pl", base_command=["subtractBedGraphsDirectory.pl"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="-prefix", doc=InputDocumentation(doc="(will separate bedGraphs based on this name)")), ToolInput(tag="in_center", input_type=Boolean(optional=True), prefix="-center", doc=InputDocumentation(doc="(center bedGraphs on average signal, removes global differences)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subtractbedgraphsdirectory_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


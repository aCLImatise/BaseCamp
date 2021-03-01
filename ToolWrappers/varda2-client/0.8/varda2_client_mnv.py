from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varda2_Client_Mnv_V0_1_0 = CommandToolBuilder(tool="varda2_client_mnv", base_command=["varda2-client", "mnv"], inputs=[ToolInput(tag="in_start", input_type=String(optional=True), prefix="--start", doc=InputDocumentation(doc="Start of region")), ToolInput(tag="in_end", input_type=String(optional=True), prefix="--end", doc=InputDocumentation(doc="End of region")), ToolInput(tag="in_inserted", input_type=String(optional=True), prefix="--inserted", doc=InputDocumentation(doc="Inserted sequence")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Chromosome to look at\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Mnv_V0_1_0().translate("wdl", allow_empty_container=True)


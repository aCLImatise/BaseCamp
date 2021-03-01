from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Novosort_V0_1_0 = CommandToolBuilder(tool="novosort", base_command=["novosort"], inputs=[ToolInput(tag="in_umi", input_type=Boolean(optional=True), prefix="--UMI", doc=InputDocumentation(doc="UMI is part of Illumina read header '@Instrument:RunID:FlowCellID:Lane:Tile:X:Y:UMI'\nIf --UMI & --uniqueTags are both used then UMI tags takes precedence if it exists\non the header. If not found we look for the unique tags. This allows some degree of\nmixing source of UMI.")), ToolInput(tag="in_sorted_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[--assumesorted|-a]            Assume input files are already sorted even if @HD doesn't"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novosort_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Contigoverlaps_V0_1_0 = CommandToolBuilder(tool="contigOverlaps", base_command=["contigOverlaps"], inputs=[ToolInput(tag="in_percent_identity", input_type=Boolean(optional=True), prefix="--percentIdentity", doc=InputDocumentation(doc="arg  The minimum end-to-end % identity of qualifying reads (default: 97)")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_first_assembly_bams_dot_fof_n", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_second_assembly_bams_dot_fof_n", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contigoverlaps_V0_1_0().translate("wdl", allow_empty_container=True)


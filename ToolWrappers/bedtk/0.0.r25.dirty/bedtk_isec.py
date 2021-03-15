from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bedtk_Isec_V0_1_0 = CommandToolBuilder(tool="bedtk_isec", base_command=["bedtk", "isec"], inputs=[ToolInput(tag="in_list_specify_order", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="list of contig IDs to specify the output order []")), ToolInput(tag="in_a_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_b_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtk_Isec_V0_1_0().translate("wdl")


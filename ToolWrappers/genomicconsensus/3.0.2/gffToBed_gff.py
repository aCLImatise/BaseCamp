from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gfftobed_Gff_V0_1_0 = CommandToolBuilder(tool="gffToBed_gff", base_command=["gffToBed", "gff"], inputs=[ToolInput(tag="in_emit_tool_contract", input_type=Boolean(optional=True), prefix="--emit-tool-contract", doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_to_bed", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfftobed_Gff_V0_1_0().translate("wdl", allow_empty_container=True)


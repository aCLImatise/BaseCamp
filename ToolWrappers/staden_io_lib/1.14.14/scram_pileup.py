from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Scram_Pileup_V0_1_0 = CommandToolBuilder(tool="scram_pileup", base_command=["scram_pileup"], inputs=[ToolInput(tag="in_gap_pileup_format", input_type=Boolean(optional=True), prefix="-5", doc=InputDocumentation(doc="Gap5 pileup format.")), ToolInput(tag="in_depth_format", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Depth format.")), ToolInput(tag="in_filename_dot", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scram_Pileup_V0_1_0().translate("wdl")


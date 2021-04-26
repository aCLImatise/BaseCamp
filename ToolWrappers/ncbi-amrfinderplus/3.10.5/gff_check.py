from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gff_Check_V0_1_0 = CommandToolBuilder(tool="gff_check", base_command=["gff_check"], inputs=[ToolInput(tag="in_gff", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ncbi-amrfinderplus:3.10.5--h17dc2d4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff_Check_V0_1_0().translate("wdl")


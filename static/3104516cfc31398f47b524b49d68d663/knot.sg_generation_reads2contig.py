from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Knot_Sg_Generation_Reads2Contig_V0_1_0 = CommandToolBuilder(tool="knot.sg_generation_reads2contig", base_command=["knot.sg_generation", "reads2contig"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Sg_Generation_Reads2Contig_V0_1_0().translate("wdl")


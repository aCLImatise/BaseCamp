from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Bam2Fna_Output_V0_1_0 = CommandToolBuilder(tool="bam2fna_OUTPUT", base_command=["bam2fna", "OUTPUT"], inputs=[ToolInput(tag="in_bam_two_fna", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fna_Output_V0_1_0().translate("wdl", allow_empty_container=True)


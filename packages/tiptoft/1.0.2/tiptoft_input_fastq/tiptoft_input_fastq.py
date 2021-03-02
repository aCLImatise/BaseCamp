from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tiptoft_Input_Fastq_V0_1_0 = CommandToolBuilder(tool="tiptoft_input_fastq", base_command=["tiptoft", "input_fastq"], inputs=[ToolInput(tag="in_tip_to_ft", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_fast_q", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tiptoft_Input_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Dr_Disco_Detect_V0_1_0 = CommandToolBuilder(tool="dr_disco_detect", base_command=["dr-disco", "detect"], inputs=[ToolInput(tag="in_min_e_score", input_type=Int(optional=True), prefix="--min-e-score", doc=InputDocumentation(doc="Minimal score to initiate pulling sub-graphs\n(larger numbers boost performance but result in\nsuboptimal results) [default=8]")), ToolInput(tag="in_bam_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dr_Disco_Detect_V0_1_0().translate("wdl", allow_empty_container=True)


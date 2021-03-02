from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gtf_Juncs_V0_1_0 = CommandToolBuilder(tool="gtf_juncs", base_command=["gtf_juncs"], inputs=[ToolInput(tag="in_transcripts_dot_gtf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_Juncs_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hypo_V0_1_0 = CommandToolBuilder(tool="hypo", base_command=["hypo"], inputs=[ToolInput(tag="in_sr", input_type=String(), position=0, doc=InputDocumentation(doc="(Corresponding to NGS reads like Illumina reads) ")), ToolInput(tag="in_ccs", input_type=String(), position=1, doc=InputDocumentation(doc="(Corresponding to HiFi reads like PacBio CCS reads) "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hypo_V0_1_0().translate("wdl", allow_empty_container=True)


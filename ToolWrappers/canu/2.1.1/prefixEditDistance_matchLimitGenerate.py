from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Prefixeditdistance_Matchlimitgenerate_V0_1_0 = CommandToolBuilder(tool="prefixEditDistance_matchLimitGenerate", base_command=["prefixEditDistance-matchLimitGenerate"], inputs=[ToolInput(tag="in_mine_value", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_evalue", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_step", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prefixeditdistance_Matchlimitgenerate_V0_1_0().translate("wdl")


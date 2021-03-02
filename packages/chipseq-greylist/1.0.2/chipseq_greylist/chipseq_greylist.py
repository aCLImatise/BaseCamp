from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chipseq_Greylist_V0_1_0 = CommandToolBuilder(tool="chipseq_greylist", base_command=["chipseq-greylist"], inputs=[ToolInput(tag="in_bootstraps", input_type=String(optional=True), prefix="--bootstraps", doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(optional=True), prefix="--cutoff", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chipseq_Greylist_V0_1_0().translate("wdl", allow_empty_container=True)


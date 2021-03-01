from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Filterfa_V0_1_0 = CommandToolBuilder(tool="filterfa", base_command=["filterfa"], inputs=[ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="if the reads are paired-end")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="if the reads are paired-end in two files")), ToolInput(tag="in_tmp_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterfa_V0_1_0().translate("wdl", allow_empty_container=True)


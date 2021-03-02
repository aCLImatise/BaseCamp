from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Split_Fa_V0_1_0 = CommandToolBuilder(tool="split_fa", base_command=["split_fa"], inputs=[ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="if the reads are paired-end in one file")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="if the reads are paired-end in two files")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="filter out reads containing 'N'")), ToolInput(tag="in_fq_two_fa", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tmp_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tmp_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Fa_V0_1_0().translate("wdl", allow_empty_container=True)


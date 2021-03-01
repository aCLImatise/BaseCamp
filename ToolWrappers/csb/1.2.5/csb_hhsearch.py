from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Csb_Hhsearch_V0_1_0 = CommandToolBuilder(tool="csb_hhsearch", base_command=["csb-hhsearch"], inputs=[ToolInput(tag="in_binary", input_type=File(optional=True), prefix="--binary", doc=InputDocumentation(doc="full path to the HHsearch binary (default=hhsearch)")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="maximum degree of parallelism (default=8)")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="the subject (database) HMM file\n")), ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="query HMM file(s)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Hhsearch_V0_1_0().translate("wdl", allow_empty_container=True)


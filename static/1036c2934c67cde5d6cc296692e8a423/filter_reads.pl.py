from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Filter_Reads_Pl_V0_1_0 = CommandToolBuilder(tool="filter_reads.pl", base_command=["filter_reads.pl"], inputs=[ToolInput(tag="in_out", input_type=String(optional=True), prefix="-out", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="-ref", doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Reads_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


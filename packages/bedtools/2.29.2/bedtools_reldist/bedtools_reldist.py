from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedtools_Reldist_V0_1_0 = CommandToolBuilder(tool="bedtools_reldist", base_command=["bedtools", "reldist"], inputs=[ToolInput(tag="in_detail", input_type=String(optional=True), prefix="-detail", doc=InputDocumentation(doc="the relativedistance for each interval in A")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Reldist_V0_1_0().translate("wdl", allow_empty_container=True)


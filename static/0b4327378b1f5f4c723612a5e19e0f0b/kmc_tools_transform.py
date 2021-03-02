from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kmc_Tools_Transform_V0_1_0 = CommandToolBuilder(tool="kmc_tools_transform", base_command=["kmc_tools", "transform"], inputs=[ToolInput(tag="in_ci", input_type=Boolean(optional=True), prefix="-ci", doc=InputDocumentation(doc="<value> - exclude k-mers occurring less than <value> times")), ToolInput(tag="in_cx", input_type=Boolean(optional=True), prefix="-cx", doc=InputDocumentation(doc="<value> - exclude k-mers occurring more of than <value> times")), ToolInput(tag="in_cs", input_type=Boolean(optional=True), prefix="-cs", doc=InputDocumentation(doc="<value> - maximal value of a counter")), ToolInput(tag="in__sorted_output", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="- sorted output")), ToolInput(tag="in_sort", input_type=String(), position=0, doc=InputDocumentation(doc="- converts database produced by KMC2.x to KMC1.x database format (which contains k-mers in sorted order)")), ToolInput(tag="in_reduce", input_type=String(), position=1, doc=InputDocumentation(doc="- exclude too rare and too frequent k-mers")), ToolInput(tag="in_compact", input_type=String(), position=2, doc=InputDocumentation(doc="- remove counters of k-mers")), ToolInput(tag="in_histogram", input_type=String(), position=3, doc=InputDocumentation(doc="- produce histogram of k-mers occurrences")), ToolInput(tag="in_dump", input_type=String(), position=4, doc=InputDocumentation(doc="- produce text dump of kmc database"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmc_Tools_Transform_V0_1_0().translate("wdl", allow_empty_container=True)


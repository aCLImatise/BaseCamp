from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, Int, String

Batchfindmotifs_Pl_V0_1_0 = CommandToolBuilder(tool="batchFindMotifs.pl", base_command=["batchFindMotifs.pl"], inputs=[ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="(# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)")), ToolInput(tag="in_f", input_type=Array(t=Int(), optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_promoter", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_set", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batchfindmotifs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


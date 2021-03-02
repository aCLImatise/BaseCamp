from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, Int

Batchfindmotifsgenome_Pl_V0_1_0 = CommandToolBuilder(tool="batchFindMotifsGenome.pl", base_command=["batchFindMotifsGenome.pl"], inputs=[ToolInput(tag="in_dist", input_type=Boolean(optional=True), prefix="-dist", doc=InputDocumentation(doc="<#> (Will only analyze promoter-distal regions ># away from TSS)")), ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="(# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)")), ToolInput(tag="in_d", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag_directory", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Int(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batchfindmotifsgenome_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


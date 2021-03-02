from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filtertagdirectory_Pl_V0_1_0 = CommandToolBuilder(tool="filterTagDirectory.pl", base_command=["filterTagDirectory.pl"], inputs=[ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="-strand", doc=InputDocumentation(doc="(filter reads from the same strand only)")), ToolInput(tag="in_tag_adjust", input_type=Boolean(optional=True), prefix="-tagAdjust", doc=InputDocumentation(doc="<#> (adjust reads #bp before assigning overlap of 5' position)")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="-keep", doc=InputDocumentation(doc="(keep tags in peaks, discard others. def: discard peak tags)")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="-update", doc=InputDocumentation(doc="(process tags, then replace tag directory)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtertagdirectory_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


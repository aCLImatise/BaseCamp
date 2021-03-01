from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory, Int

Getmappingstats_Pl_V0_1_0 = CommandToolBuilder(tool="getMappingStats.pl", base_command=["getMappingStats.pl"], inputs=[ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (minimum length to consider a sequence an adapter-dimer, def. 15)")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="-genome", doc=InputDocumentation(doc="(limit analysis to alignment for this genome)")), ToolInput(tag="in_sample_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_directory_two", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getmappingstats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


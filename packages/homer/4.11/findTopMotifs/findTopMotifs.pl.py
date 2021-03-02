from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Findtopmotifs_Pl_V0_1_0 = CommandToolBuilder(tool="findTopMotifs.pl", base_command=["findTopMotifs.pl"], inputs=[ToolInput(tag="in_top", input_type=Boolean(optional=True), prefix="-top", doc=InputDocumentation(doc="<#> (number of times to find top motif default:5)")), ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="<#> (size of fragment | 200)")), ToolInput(tag="in_search_size", input_type=Boolean(optional=True), prefix="-searchSize", doc=InputDocumentation(doc="<#> (size of fragment to search to remove for future rounds | 200)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="-prefix", doc=InputDocumentation(doc="(Name of motif files: prefix.top1.motif... | peakfile.top1.motif)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findtopmotifs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


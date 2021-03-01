from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Getgenometilingpeaks_V0_1_0 = CommandToolBuilder(tool="getGenomeTilingPeaks", base_command=["getGenomeTilingPeaks"], inputs=[ToolInput(tag="in_tag_directories_analyze", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="[tag directory 2] ... (tag directories to analyze)")), ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (resolution of analysis)")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getgenometilingpeaks_V0_1_0().translate("wdl", allow_empty_container=True)


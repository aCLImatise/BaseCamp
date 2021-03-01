from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Merge2Dbed_Pl_V0_1_0 = CommandToolBuilder(tool="merge2Dbed.pl", base_command=["merge2Dbed.pl"], inputs=[ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (maximum distance between endpoints to merge, default: 15000)\nUsually for loops -res should be set to the window/superRes size, for TADs 2x window/superRes")), ToolInput(tag="in_loop", input_type=Boolean(optional=True), prefix="-loop", doc=InputDocumentation(doc="(treat 2D bed input files as loops, default)")), ToolInput(tag="in_tad", input_type=Boolean(optional=True), prefix="-tad", doc=InputDocumentation(doc="(treat 2D bed input files as TADs)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="-prefix", doc=InputDocumentation(doc="(output venn diagram overlaps to separate files)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge2Dbed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


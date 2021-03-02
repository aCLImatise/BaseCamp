from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Adjustpeakfile_Pl_V0_1_0 = CommandToolBuilder(tool="adjustPeakFile.pl", base_command=["adjustPeakFile.pl"], inputs=[ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="<#> (resize peak [around center] to this size, supports -size <#,#>)")), ToolInput(tag="in_r_size", input_type=Boolean(optional=True), prefix="-rsize", doc=InputDocumentation(doc="<#> (resize peak by this relative size, supports -size <#,#>)")), ToolInput(tag="in_move", input_type=Boolean(optional=True), prefix="-move", doc=InputDocumentation(doc="<#> (move peak [relative to strand], default: 0)")), ToolInput(tag="in_five_p", input_type=Boolean(optional=True), prefix="-5p", doc=InputDocumentation(doc="(recenter peak on 5' end of region)")), ToolInput(tag="in_three_p", input_type=Boolean(optional=True), prefix="-3p", doc=InputDocumentation(doc="(recenter peak on 3' end of region)")), ToolInput(tag="in_ends", input_type=Boolean(optional=True), prefix="-ends", doc=InputDocumentation(doc="(get both 5' and 3' ends - 3' ends will be flipped)")), ToolInput(tag="in_flip_strand", input_type=Boolean(optional=True), prefix="-flipStrand", doc=InputDocumentation(doc="(change strand of peak)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (remove peaks smaller than #)")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="<#> (remove peaks larger than #)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adjustpeakfile_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


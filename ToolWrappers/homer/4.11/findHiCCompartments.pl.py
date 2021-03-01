from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Findhiccompartments_Pl_V0_1_0 = CommandToolBuilder(tool="findHiCCompartments.pl", base_command=["findHiCCompartments.pl"], inputs=[ToolInput(tag="in_opp", input_type=Boolean(optional=True), prefix="-opp", doc=InputDocumentation(doc="(return inactive, not active regions)")), ToolInput(tag="in_thresh", input_type=Boolean(optional=True), prefix="-thresh", doc=InputDocumentation(doc="<#> (threshold for active regions, default: 0)")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="(for differential domains)")), ToolInput(tag="in_diff", input_type=Boolean(optional=True), prefix="-diff", doc=InputDocumentation(doc="<#> (difference threshold, default: 0.5)")), ToolInput(tag="in_corr", input_type=File(optional=True), prefix="-corr", doc=InputDocumentation(doc="(for differential domains)")), ToolInput(tag="in_corr_diff", input_type=Boolean(optional=True), prefix="-corrDiff", doc=InputDocumentation(doc="<#> (correlation threshold, default: 0.4)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (minimum size of domains, default: 100000)")), ToolInput(tag="in_pc_one_dot_txt_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findhiccompartments_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gethiccorrdiff_Pl_V0_1_0 = CommandToolBuilder(tool="getHiCcorrDiff.pl", base_command=["getHiCcorrDiff.pl"], inputs=[ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (resolution in bp, default: 50000)")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="<#> (window resolution in bp, i.e. window size, default: 100000)")), ToolInput(tag="in_corr_depth", input_type=Boolean(optional=True), prefix="-corrDepth", doc=InputDocumentation(doc="<#> (number of expected reads needed per data point when calculating correlation, default: 3)")), ToolInput(tag="in_std", input_type=Boolean(optional=True), prefix="-std", doc=InputDocumentation(doc="<#> (exclude regions with sequencing depth exceeding # std deviations, default: 8)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.05)")), ToolInput(tag="in_max_dist", input_type=Boolean(optional=True), prefix="-maxDist", doc=InputDocumentation(doc="<#> (maximum distance around regions to calculate similarity metrics, default: none)")), ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="<#> (number of CPUs to use, default: 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gethiccorrdiff_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


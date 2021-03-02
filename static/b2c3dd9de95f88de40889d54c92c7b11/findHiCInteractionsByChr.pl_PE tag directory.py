from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Findhicinteractionsbychr_Pl_Pe_Tag_Directory_V0_1_0 = CommandToolBuilder(tool="findHiCInteractionsByChr.pl_PE tag directory", base_command=["findHiCInteractionsByChr.pl", "PE tag directory"], inputs=[ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (resolution in bp, default: 2000)")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="<#> (window resolution in bp, i.e. superRes, default: 10000)")), ToolInput(tag="in_mind_ist", input_type=Boolean(optional=True), prefix="-minDist", doc=InputDocumentation(doc="<#> (minimum interaction distance to search, default: superRes distance)")), ToolInput(tag="in_max_dist", input_type=Boolean(optional=True), prefix="-maxDist", doc=InputDocumentation(doc="<#> (minimum interaction distance to search, default: 10000000)")), ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="-pvalue", doc=InputDocumentation(doc="<#> (pvalue cutoff, default: 0.01)")), ToolInput(tag="in_zscore", input_type=Boolean(optional=True), prefix="-zscore", doc=InputDocumentation(doc="<#> (z-score cutoff, default: 1.5)")), ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="<#> (number of CPUs to use, default: 1)")), ToolInput(tag="in_ped", input_type=Directory(optional=True), prefix="-ped", doc=InputDocumentation(doc="(Background HiC directory)")), ToolInput(tag="in_std", input_type=Boolean(optional=True), prefix="-std", doc=InputDocumentation(doc="<#> (exclude regions with sequencing depth exceeding # std deviations, default: 4)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.2)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findhicinteractionsbychr_Pl_Pe_Tag_Directory_V0_1_0().translate("wdl", allow_empty_container=True)


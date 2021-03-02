from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Getfocalpeaks_Pl_V0_1_0 = CommandToolBuilder(tool="getFocalPeaks.pl", base_command=["getFocalPeaks.pl"], inputs=[ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (minimum focus ratio threshold, default: 0.75)")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="<#> (maximum focus ratio threshold, default: none)")), ToolInput(tag="in_peaks_dot_centered_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getfocalpeaks_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


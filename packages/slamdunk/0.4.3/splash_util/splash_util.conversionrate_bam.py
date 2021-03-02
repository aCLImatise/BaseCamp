from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Splash_Util_Conversionrate_Bam_V0_1_0 = CommandToolBuilder(tool="splash_util.conversionrate_bam", base_command=["splash", "util.conversionrate", "bam"], inputs=[ToolInput(tag="in_rev", input_type=Boolean(optional=True), prefix="-rev", doc=InputDocumentation(doc="")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="-region", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_splash", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_util_dot_conversion_rate", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splash_Util_Conversionrate_Bam_V0_1_0().translate("wdl", allow_empty_container=True)


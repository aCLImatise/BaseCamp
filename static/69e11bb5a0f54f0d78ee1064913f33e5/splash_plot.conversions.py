from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Splash_Plot_Conversions_V0_1_0 = CommandToolBuilder(tool="splash_plot.conversions", base_command=["splash", "plot.conversions"], inputs=[ToolInput(tag="in_slam_dunk_dir", input_type=String(optional=True), prefix="--slamdunkDir", doc=InputDocumentation(doc="T->C conversion rate\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splash_Plot_Conversions_V0_1_0().translate("wdl", allow_empty_container=True)


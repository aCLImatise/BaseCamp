from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Mean_V0_1_0 = CommandToolBuilder(tool="mean", base_command=["mean"], inputs=[ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="The minimum probability threshold (default=1e-30)")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mean_V0_1_0().translate("wdl", allow_empty_container=True)


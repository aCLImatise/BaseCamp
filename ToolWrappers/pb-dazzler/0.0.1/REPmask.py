from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Repmask_V0_1_0 = CommandToolBuilder(tool="REPmask", base_command=["REPmask"], inputs=[ToolInput(tag="in_verbose_mode_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose mode, output statistics as proceed.")), ToolInput(tag="in_cutoff_depth_declaring", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": cutoff depth for declaring an interval repetitive.")), ToolInput(tag="in_use_name_track", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": use this name as for the repeat mask track"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repmask_V0_1_0().translate("wdl", allow_empty_container=True)


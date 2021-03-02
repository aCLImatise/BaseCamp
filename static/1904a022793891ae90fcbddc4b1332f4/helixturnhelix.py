from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Helixturnhelix_V0_1_0 = CommandToolBuilder(tool="helixturnhelix", base_command=["helixturnhelix"], inputs=[ToolInput(tag="in_mean", input_type=Boolean(optional=True), prefix="-mean", doc=InputDocumentation(doc="float      [238.71] Mean value (Number from 1.000 to\n10000.000)")), ToolInput(tag="in_sd_value", input_type=Boolean(optional=True), prefix="-sdvalue", doc=InputDocumentation(doc="float      [293.61] Standard Deviation value (Number\nfrom 1.000 to 10000.000)")), ToolInput(tag="in_mins_d", input_type=Boolean(optional=True), prefix="-minsd", doc=InputDocumentation(doc="float      [2.5] Minimum SD (Number from 0.000 to\n100.000)")), ToolInput(tag="in_boolean_use_data", input_type=Boolean(optional=True), prefix="-eightyseven", doc=InputDocumentation(doc="boolean    Use the old (1987) weight data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Helixturnhelix_V0_1_0().translate("wdl", allow_empty_container=True)


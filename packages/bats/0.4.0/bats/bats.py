from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bats_V0_1_0 = CommandToolBuilder(tool="bats", base_command=["bats"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="Count the number of test cases without running any tests")), ToolInput(tag="in_pretty", input_type=Boolean(optional=True), prefix="--pretty", doc=InputDocumentation(doc="Show results in pretty format (default for terminals)")), ToolInput(tag="in_tap", input_type=Boolean(optional=True), prefix="--tap", doc=InputDocumentation(doc="Show results in TAP format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bats_V0_1_0().translate("wdl", allow_empty_container=True)


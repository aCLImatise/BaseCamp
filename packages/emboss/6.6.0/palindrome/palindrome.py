from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Palindrome_V0_1_0 = CommandToolBuilder(tool="palindrome", base_command=["palindrome"], inputs=[ToolInput(tag="in_min_p_allen", input_type=Boolean(optional=True), prefix="-minpallen", doc=InputDocumentation(doc="integer    [10] Enter minimum length of palindrome\n(Integer 1 or more)")), ToolInput(tag="in_maxp_allen", input_type=Boolean(optional=True), prefix="-maxpallen", doc=InputDocumentation(doc="integer    [100] Enter maximum length of palindrome\n(Any integer value)")), ToolInput(tag="in_gap_limit", input_type=Boolean(optional=True), prefix="-gaplimit", doc=InputDocumentation(doc="integer    [100] Enter maximum gap between repeated\nregions (Integer 0 or more)")), ToolInput(tag="in_num_mismatches", input_type=Boolean(optional=True), prefix="-nummismatches", doc=InputDocumentation(doc="integer    [0] Number of mismatches allowed (Positive\ninteger)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Palindrome_V0_1_0().translate("wdl", allow_empty_container=True)


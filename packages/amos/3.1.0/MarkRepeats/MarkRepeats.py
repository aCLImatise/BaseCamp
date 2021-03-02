from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Markrepeats_V0_1_0 = CommandToolBuilder(tool="MarkRepeats", base_command=["MarkRepeats"], inputs=[ToolInput(tag="in_no_coverage_repeats", input_type=Boolean(optional=True), prefix="-noCoverageRepeats", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_path_repeats", input_type=Boolean(optional=True), prefix="-noPathRepeats", doc=InputDocumentation(doc="")), ToolInput(tag="in_redundancy", input_type=Boolean(optional=True), prefix="-redundancy", doc=InputDocumentation(doc="")), ToolInput(tag="in_agressive", input_type=Boolean(optional=True), prefix="-agressive", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_an_k", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Markrepeats_V0_1_0().translate("wdl", allow_empty_container=True)


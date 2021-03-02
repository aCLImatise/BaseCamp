from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Checkcoveragegaps_V0_1_0 = CommandToolBuilder(tool="checkCoverageGaps", base_command=["checkCoverageGaps"], inputs=[ToolInput(tag="in_all_parts", input_type=Boolean(optional=True), prefix="-allParts", doc=InputDocumentation(doc="If set then include _hap and _random and other wierd chroms")), ToolInput(tag="in_female", input_type=String(optional=True), prefix="-female", doc=InputDocumentation(doc="set then don't check chrY")), ToolInput(tag="in_no_comma", input_type=Boolean(optional=True), prefix="-noComma", doc=InputDocumentation(doc="- Don't put commas in biggest gap output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkcoveragegaps_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Webtidy_V0_1_0 = CommandToolBuilder(tool="webtidy", base_command=["webtidy"], inputs=[ToolInput(tag="in_context", input_type=Boolean(optional=True), prefix="--context", doc=InputDocumentation(doc="[=n]   Show the offending line (and n surrounding lines)")), ToolInput(tag="in_no_errors", input_type=Boolean(optional=True), prefix="--noerrors", doc=InputDocumentation(doc="Ignore errors")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="--nowarnings", doc=InputDocumentation(doc="Ignore warnings")), ToolInput(tag="in_filename", input_type=File(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Webtidy_V0_1_0().translate("wdl", allow_empty_container=True)


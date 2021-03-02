from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Perror_V0_1_0 = CommandToolBuilder(tool="perror", base_command=["perror"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Synonym for --help.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Only print the error message.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print error code and message (default).\n(Defaults to on; use --skip-verbose to disable.)")), ToolInput(tag="in_error_code", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_error_code_dot_dot_dot", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perror_V0_1_0().translate("wdl", allow_empty_container=True)


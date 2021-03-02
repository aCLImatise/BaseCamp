from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gt_V0_1_0 = CommandToolBuilder(tool="gt", base_command=["gt"], inputs=[ToolInput(tag="in_enter_interactive_mode", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="enter interactive mode after executing 'tool' or 'script'")), ToolInput(tag="in_suppress_warnings", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="suppress warnings")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="perform unit tests and exit")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="set seed for random number generator manually.\n0 generates a seed from current time and process id")), ToolInput(tag="in_version", input_type=String(optional=True), prefix="-version", doc=InputDocumentation(doc="version information and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gt_V0_1_0().translate("wdl", allow_empty_container=True)


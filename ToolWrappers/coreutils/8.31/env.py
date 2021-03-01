from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Env_V0_1_0 = CommandToolBuilder(tool="env", base_command=["env"], inputs=[ToolInput(tag="in_ignore_environment", input_type=Boolean(optional=True), prefix="--ignore-environment", doc=InputDocumentation(doc="start with an empty environment")), ToolInput(tag="in_null", input_type=Boolean(optional=True), prefix="--null", doc=InputDocumentation(doc="end each output line with NUL, not newline")), ToolInput(tag="in_unset", input_type=String(optional=True), prefix="--unset", doc=InputDocumentation(doc="remove variable from the environment")), ToolInput(tag="in_chdir", input_type=Directory(optional=True), prefix="--chdir", doc=InputDocumentation(doc="change working directory to DIR")), ToolInput(tag="in_split_string", input_type=String(optional=True), prefix="--split-string", doc=InputDocumentation(doc="process and split S into separate arguments;\nused to pass multiple arguments on shebang lines")), ToolInput(tag="in_block_signal", input_type=Boolean(optional=True), prefix="--block-signal", doc=InputDocumentation(doc="[=SIG]    block delivery of SIG signal(s) to COMMAND")), ToolInput(tag="in_default_signal", input_type=Boolean(optional=True), prefix="--default-signal", doc=InputDocumentation(doc="[=SIG]  reset handling of SIG signal(s) to the default")), ToolInput(tag="in_ignore_signal", input_type=Boolean(optional=True), prefix="--ignore-signal", doc=InputDocumentation(doc="[=SIG]   set handling of SIG signals(s) to do nothing")), ToolInput(tag="in_list_signal_handling", input_type=Boolean(optional=True), prefix="--list-signal-handling", doc=InputDocumentation(doc="list non default signal handling to stderr")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="print verbose information for each processing step"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Env_V0_1_0().translate("wdl", allow_empty_container=True)


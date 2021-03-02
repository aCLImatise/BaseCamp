from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Timeout_V0_1_0 = CommandToolBuilder(tool="timeout", base_command=["timeout"], inputs=[ToolInput(tag="in_preserve_status", input_type=Boolean(optional=True), prefix="--preserve-status", doc=InputDocumentation(doc="exit with the same status as COMMAND, even when the\ncommand times out")), ToolInput(tag="in_foreground", input_type=Boolean(optional=True), prefix="--foreground", doc=InputDocumentation(doc="when not running timeout directly from a shell prompt,\nallow COMMAND to read from the TTY and get TTY signals;\nin this mode, children of COMMAND will not be timed out")), ToolInput(tag="in_kill_after", input_type=String(optional=True), prefix="--kill-after", doc=InputDocumentation(doc="also send a KILL signal if COMMAND is still running\nthis long after the initial signal was sent")), ToolInput(tag="in_signal", input_type=Int(optional=True), prefix="--signal", doc=InputDocumentation(doc="specify the signal to be sent on timeout;\nSIGNAL may be a name like 'HUP' or a number;\nsee 'kill -l' for a list of signals")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="diagnose to stderr any signal sent upon timeout")), ToolInput(tag="in_duration", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arg", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Timeout_V0_1_0().translate("wdl", allow_empty_container=True)


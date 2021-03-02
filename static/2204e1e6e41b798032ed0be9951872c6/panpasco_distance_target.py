from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Panpasco_Distance_Target_V0_1_0 = CommandToolBuilder(tool="panpasco_distance_target", base_command=["panpasco-distance", "target"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="do not execute anything")), ToolInput(tag="in_print_shell_cmds", input_type=Boolean(optional=True), prefix="--printshellcmds", doc=InputDocumentation(doc="print out the shell commands that will be executed")), ToolInput(tag="in_timestamp", input_type=Boolean(optional=True), prefix="--timestamp", doc=InputDocumentation(doc="add a timestamp to all logging output")), ToolInput(tag="in_jobs", input_type=String(optional=True), prefix="--jobs", doc=InputDocumentation(doc="use at most N cores in parallel")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--configfile", doc=InputDocumentation(doc="")), ToolInput(tag="in_pan_pasco_distance", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_snake_make", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panpasco_Distance_Target_V0_1_0().translate("wdl", allow_empty_container=True)


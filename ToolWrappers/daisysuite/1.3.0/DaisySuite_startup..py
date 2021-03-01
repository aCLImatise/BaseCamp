from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Daisysuite_Startup__V0_1_0 = CommandToolBuilder(tool="DaisySuite_startup.", base_command=["DaisySuite", "startup."], inputs=[ToolInput(tag="in_cores", input_type=Boolean(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores")), ToolInput(tag="in_keep_going", input_type=Boolean(optional=True), prefix="--keep-going", doc=InputDocumentation(doc="go on with independent jobs if a job fails")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="do not execute anything")), ToolInput(tag="in_print_shell_cmds", input_type=Boolean(optional=True), prefix="--printshellcmds", doc=InputDocumentation(doc="print out the shell commands that will be executed")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--configfile", doc=InputDocumentation(doc="")), ToolInput(tag="in_daisy_suite", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_snake_make", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Daisysuite_Startup__V0_1_0().translate("wdl", allow_empty_container=True)


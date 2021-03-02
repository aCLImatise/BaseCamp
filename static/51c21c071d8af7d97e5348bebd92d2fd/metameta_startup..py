from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Metameta_Startup__V0_1_0 = CommandToolBuilder(tool="metameta_startup.", base_command=["metameta", "startup."], inputs=[ToolInput(tag="in_use_cond_a", input_type=Boolean(optional=True), prefix="--use-conda", doc=InputDocumentation(doc="use conda to automatically install pre-configured packages")), ToolInput(tag="in_cores", input_type=Boolean(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores")), ToolInput(tag="in_keep_going", input_type=Boolean(optional=True), prefix="--keep-going", doc=InputDocumentation(doc="go on with independent jobs if a job fails")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="do not execute anything")), ToolInput(tag="in_print_shell_cmds", input_type=Boolean(optional=True), prefix="--printshellcmds", doc=InputDocumentation(doc="print out the shell commands that will be executed")), ToolInput(tag="in_timestamp", input_type=Boolean(optional=True), prefix="--timestamp", doc=InputDocumentation(doc="add a timestamp to all logging output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metameta_Startup__V0_1_0().translate("wdl", allow_empty_container=True)


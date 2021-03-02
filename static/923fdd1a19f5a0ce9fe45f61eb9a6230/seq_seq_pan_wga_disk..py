from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Seq_Seq_Pan_Wga_Disk__V0_1_0 = CommandToolBuilder(tool="seq_seq_pan_wga_disk.", base_command=["seq-seq-pan-wga", "disk."], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="do not execute anything")), ToolInput(tag="in_print_shell_cmds", input_type=Boolean(optional=True), prefix="--printshellcmds", doc=InputDocumentation(doc="print out the shell commands that will be executed")), ToolInput(tag="in_timestamp", input_type=Boolean(optional=True), prefix="--timestamp", doc=InputDocumentation(doc="add a timestamp to all logging output")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_seq_pan_wga", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Seq_Pan_Wga_Disk__V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Jcmd_V0_1_0 = CommandToolBuilder(tool="jcmd", base_command=["jcmd"], inputs=[ToolInput(tag="in_read_execute_commands", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="read and execute commands from the file")), ToolInput(tag="in_list_jvm_processes", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="list JVM processes on the local machine")), ToolInput(tag="in_pid_vertical_line_main_class", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command_dot_dot_dot_vertical_line_perf_counter_dot_print_vertical_line_f_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jcmd_V0_1_0().translate("wdl", allow_empty_container=True)


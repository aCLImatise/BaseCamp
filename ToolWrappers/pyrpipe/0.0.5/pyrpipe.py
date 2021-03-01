from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Directory, File, String

Pyrpipe_V0_1_0 = CommandToolBuilder(tool="pyrpipe", base_command=["pyrpipe"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Num processes/threads to use Default:mp.cpu_count()")), ToolInput(tag="in_max_memory", input_type=Int(optional=True), prefix="--max-memory", doc=InputDocumentation(doc="Max memory to use (in GB) default: None")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print pyrpipe_engine's stdout and stderr Default:")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force execution of commands if their target files\nalready exist Default: False")), ToolInput(tag="in_safe_mode", input_type=Boolean(optional=True), prefix="--safe-mode", doc=InputDocumentation(doc="Disable file deletions through pyrpipe_engine module\nDefault: False")), ToolInput(tag="in_no_logs", input_type=Boolean(optional=True), prefix="--no-logs", doc=InputDocumentation(doc="Disable pyrpipe logs Default: False")), ToolInput(tag="in_param_dir", input_type=Directory(optional=True), prefix="--param-dir", doc=InputDocumentation(doc="Directory containing parameter yaml files Default:\n./params")), ToolInput(tag="in_logs_dir", input_type=Directory(optional=True), prefix="--logs-dir", doc=InputDocumentation(doc="Directory for saving log files Default: ./pyrpipe_logs")), ToolInput(tag="in_multi_qc", input_type=Boolean(optional=True), prefix="--multiqc", doc=InputDocumentation(doc="Autorun MultiQC after execution Default: False")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="The input python script")), ToolInput(tag="in_false", input_type=String(), position=0, doc=InputDocumentation(doc="--dry-run             Only print pyrpipe's commands and not execute anything"))], outputs=[], container="quay.io/biocontainers/pyrpipe:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrpipe_V0_1_0().translate("wdl")


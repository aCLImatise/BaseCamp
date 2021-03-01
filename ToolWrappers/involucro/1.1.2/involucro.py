from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Involucro_V0_1_0 = CommandToolBuilder(tool="involucro", base_command=["involucro"], inputs=[ToolInput(tag="in_set_url_default", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="Set the URL of the Docker instance (default 'unix:///var/run/docker.sock')")), ToolInput(tag="in_shorthand_for_tasks", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="Shorthand for --tasks")), ToolInput(tag="in_evaluate_given_script", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="Evaluate the given script directly, not evaluating the control file")), ToolInput(tag="in_set_file_default", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Set the control file (default 'invfile.lua')")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc="Long form for -H (default 'unix:///var/run/docker.sock')")), ToolInput(tag="in_shorthand__set", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Shorthand for --set (default [])")), ToolInput(tag="in_set", input_type=String(optional=True), prefix="-set", doc=InputDocumentation(doc="Used as KEY=VALUE, makes VAR[KEY] available with value VALUE in Lua script (default [])")), ToolInput(tag="in_tasks", input_type=Boolean(optional=True), prefix="-tasks", doc=InputDocumentation(doc="Show available tasks and then exit")), ToolInput(tag="in_set_verbosity_logs", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Set verbosity, 3 logs everything, 2 shows standard output (default 1)")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Show version and the exit")), ToolInput(tag="in_set_working_dir", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="Set working dir, being the base for all operations. Also settable via environment variable $INVOLUCRO_WORKDIR (default '.')")), ToolInput(tag="in_wrap", input_type=String(optional=True), prefix="-wrap", doc=InputDocumentation(doc="Execute encoded wrap task\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Involucro_V0_1_0().translate("wdl", allow_empty_container=True)


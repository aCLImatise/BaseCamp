from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Lua_V0_1_0 = CommandToolBuilder(tool="lua", base_command=["lua"], inputs=[ToolInput(tag="in_execute_string", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="execute string 'stat'")), ToolInput(tag="in_enter_interactive_mode", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="enter interactive mode after executing 'script'")), ToolInput(tag="in_require_library", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="require library 'name'")), ToolInput(tag="in_show_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show version information")), ToolInput(tag="in_ignore_environment_variables", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="ignore environment variables")), ToolInput(tag="in_script", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lua_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Jrunscript_V0_1_0 = CommandToolBuilder(tool="jrunscript", base_command=["jrunscript"], inputs=[ToolInput(tag="in_classpath", input_type=File(optional=True), prefix="-classpath", doc=InputDocumentation(doc="Specify where to find user class files")), ToolInput(tag="in_cp", input_type=File(optional=True), prefix="-cp", doc=InputDocumentation(doc="Specify where to find user class files")), ToolInput(tag="in_namevalue_set_property", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="<name>=<value>     Set a system property")), ToolInput(tag="in_flag_pass_flag", input_type=Boolean(optional=True), prefix="-J", doc=InputDocumentation(doc="<flag>             Pass <flag> directly to the runtime system")), ToolInput(tag="in_use_specified_language", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Use specified scripting language")), ToolInput(tag="in_evaluate_given_script", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Evaluate given script")), ToolInput(tag="in_encoding", input_type=String(optional=True), prefix="-encoding", doc=InputDocumentation(doc="Specify character encoding used by script files")), ToolInput(tag="in_list_scripting_engines", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="List all scripting engines available and exit")), ToolInput(tag="in_arguments_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jrunscript_V0_1_0().translate("wdl", allow_empty_container=True)


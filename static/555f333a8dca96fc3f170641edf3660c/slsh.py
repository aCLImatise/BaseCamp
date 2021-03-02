from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Slsh_V0_1_0 = CommandToolBuilder(tool="slsh", base_command=["slsh"], inputs=[ToolInput(tag="in_execute_slang_code", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Execute 'string' as S-Lang code")), ToolInput(tag="in_compile_debugging_code", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Compile with debugging code, tracebacks, etc")), ToolInput(tag="in_load_init_file", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't load personal init file")), ToolInput(tag="in_in_it", input_type=File(optional=True), prefix="--init", doc=InputDocumentation(doc="Use this file instead of ~/.slshrc")), ToolInput(tag="in_no_readline", input_type=Boolean(optional=True), prefix="--no-readline", doc=InputDocumentation(doc="Do not use readline")), ToolInput(tag="in_force_interactive_input", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Force interactive input")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print startup messages")), ToolInput(tag="in_test_mode_slshmain", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Test mode.  If slsh_main exists, do not call it")), ToolInput(tag="in_show_verbose_messages", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Show verbose loading messages")), ToolInput(tag="in_d_name", input_type=Boolean(optional=True), prefix="-Dname", doc=InputDocumentation(doc="Define 'name' as a preprocessor symbol\nNote: - and -i are mutually exclusive"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slsh_V0_1_0().translate("wdl", allow_empty_container=True)


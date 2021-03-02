from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Prophyle_Compile_V0_1_0 = CommandToolBuilder(tool="prophyle_compile", base_command=["prophyle", "compile"], inputs=[ToolInput(tag="in_clean_files_instead", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="clean files instead of compiling")), ToolInput(tag="in_force_recompilation", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="force recompilation")), ToolInput(tag="in_run_compilation_parallel", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="run compilation in parallel")), ToolInput(tag="in_advanced_configuration_json", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]  advanced configuration (a JSON dictionary)")), ToolInput(tag="in_str", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Compile_V0_1_0().translate("wdl", allow_empty_container=True)


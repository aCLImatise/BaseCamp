from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Ikdasm_V0_1_0 = CommandToolBuilder(tool="ikdasm", base_command=["ikdasm"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Direct output to file rather than stdout")), ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="-assembly", doc=InputDocumentation(doc="Dumps the contents of the Assembly table")), ToolInput(tag="in_assembly_ref", input_type=Boolean(optional=True), prefix="-assemblyref", doc=InputDocumentation(doc="Dumps the contents of the AssemblyRef table")), ToolInput(tag="in_module_ref", input_type=Boolean(optional=True), prefix="-moduleref", doc=InputDocumentation(doc="Dumps the contents of the ModuleRef table")), ToolInput(tag="in_file_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Direct output to file rather than stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ikdasm_V0_1_0().translate("wdl", allow_empty_container=True)


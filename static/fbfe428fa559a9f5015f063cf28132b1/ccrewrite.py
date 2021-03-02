from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Ccrewrite_V0_1_0 = CommandToolBuilder(tool="ccrewrite", base_command=["ccrewrite"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Use MDB or PDB debug information (default=true).")), ToolInput(tag="in_level", input_type=Int(optional=True), prefix="--level", doc=InputDocumentation(doc="Instrumentation level, 0 - 4 (default=4).")), ToolInput(tag="in_write_pdb_file", input_type=Boolean(optional=True), prefix="--writePDBFile", doc=InputDocumentation(doc="Write MDB or PDB file (default=true).")), ToolInput(tag="in_rewrite", input_type=Boolean(optional=True), prefix="--rewrite", doc=InputDocumentation(doc="Rewrite the assembly (default=true).")), ToolInput(tag="in_assembly", input_type=String(optional=True), prefix="--assembly", doc=InputDocumentation(doc="Assembly to rewrite.")), ToolInput(tag="in_break_into_debugger", input_type=Boolean(optional=True), prefix="--breakIntoDebugger", doc=InputDocumentation(doc="Break into debugger on contract failure.")), ToolInput(tag="in_throw_on_failure", input_type=Boolean(optional=True), prefix="--throwOnFailure", doc=InputDocumentation(doc="Throw ContractException on contract failure.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename of rewritten file."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename of rewritten file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ccrewrite_V0_1_0().translate("wdl", allow_empty_container=True)


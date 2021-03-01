from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Fastutils_Cutn_V0_1_0 = CommandToolBuilder(tool="fastutils_cutN", base_command=["fastutils", "cutN"], inputs=[ToolInput(tag="in_input_file_fastx", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input file in fastx format. Use - for stdin.")), ToolInput(tag="in_output_file_use", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file in fasta format. Use - for stdout.")), ToolInput(tag="in_print_version_build", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print version and build date"))], outputs=[ToolOutput(tag="out_output_file_use", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_use", type_hint=File()), doc=OutputDocumentation(doc="output file in fasta format. Use - for stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastutils_Cutn_V0_1_0().translate("wdl", allow_empty_container=True)


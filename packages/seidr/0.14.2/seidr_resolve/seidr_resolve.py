from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Seidr_Resolve_V0_1_0 = CommandToolBuilder(tool="seidr_resolve", base_command=["seidr", "resolve"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile")), ToolInput(tag="in_arg_seidr_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --seidr-file ] arg         Seidr file which should be used to resolve")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]                  Force overwrite output file if it exists")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (=-)       Output file name ['-' for stdout]")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="-F [ --format ] arg (=infomap)  File format to resolve"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]                  Force overwrite output file if it exists")), ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (=-)       Output file name ['-' for stdout]"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Resolve_V0_1_0().translate("wdl")


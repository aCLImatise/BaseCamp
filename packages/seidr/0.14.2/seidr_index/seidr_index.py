from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Seidr_Index_V0_1_0 = CommandToolBuilder(tool="seidr_index", base_command=["seidr", "index"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]         Force overwrite output file if it exists"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]         Force overwrite output file if it exists"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Index_V0_1_0().translate("wdl")


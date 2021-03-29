from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Seidr_Backbone_V0_1_0 = CommandToolBuilder(tool="seidr_backbone", base_command=["seidr", "backbone"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile")), ToolInput(tag="in_arg_last_index", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --index ] arg (=last index)  Score index to use")), ToolInput(tag="in_arg_filter_subset", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="[ --filter ] arg (=no filter)  Subset network to edges with at least this\nSD. 1.28, 1.64, and 2.32 correspond to\n~P0.1, 0.05 and 0.01.")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]                    Force overwrite output file if it exists")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --out-file ] arg (=auto)     Output file name ['-' for stdout]")), ToolInput(tag="in_arg_auto_directory", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --tempdir ] arg (=auto)      Directory to store temporary data"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]                    Force overwrite output file if it exists")), ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[ --out-file ] arg (=auto)     Output file name ['-' for stdout]"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Backbone_V0_1_0().translate("wdl")


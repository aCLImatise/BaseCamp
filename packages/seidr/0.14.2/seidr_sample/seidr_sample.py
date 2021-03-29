from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Seidr_Sample_V0_1_0 = CommandToolBuilder(tool="seidr_sample", base_command=["seidr", "sample"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile")), ToolInput(tag="in__sample_replacement", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --replacement ]         Sample with replacement")), ToolInput(tag="in_arg_number_report", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --precision ] arg (=8)  Number of significant digits to report")), ToolInput(tag="in_arg_number_sample", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --nedges ] arg          Number of edges to sample")), ToolInput(tag="in_arg_fraction_sample", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="[ --fraction ] arg        Fraction of edges to sample")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]               Force overwrite output file if it exists")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (=-)    Output file name ['-' for stdout]"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]               Force overwrite output file if it exists")), ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (=-)    Output file name ['-' for stdout]"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Sample_V0_1_0().translate("wdl")


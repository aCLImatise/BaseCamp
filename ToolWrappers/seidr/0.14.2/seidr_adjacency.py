from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Seidr_Adjacency_V0_1_0 = CommandToolBuilder(tool="seidr_adjacency", base_command=["seidr", "adjacency"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile")), ToolInput(tag="in_arg_last_index", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --index ] arg (=last index)  Score index to use")), ToolInput(tag="in_print_matrix_diagonal", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="[ --diagonal ]                 Print matrix diagonal for triangular output")), ToolInput(tag="in_arg_fill_character", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --missing ] arg (=0)         Fill character for missing edges")), ToolInput(tag="in_arg_number_report", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --precision ] arg (=8)       Number of significant digits to report")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]                    Force overwrite output file if it exists")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --out-file ] arg (=-)        Output file name ['-' for stdout]")), ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="-F [ --fmt ] arg (=m)             Output format ['m','lm']"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]                    Force overwrite output file if it exists")), ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[ --out-file ] arg (=-)        Output file name ['-' for stdout]"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Adjacency_V0_1_0().translate("wdl")


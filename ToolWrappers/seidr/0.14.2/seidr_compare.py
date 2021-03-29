from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Seidr_Compare_V0_1_0 = CommandToolBuilder(tool="seidr_compare", base_command=["seidr", "compare"], inputs=[ToolInput(tag="in_network_one", input_type=Int(optional=True), prefix="--network-1", doc=InputDocumentation(doc="Input SeidrFile for network A")), ToolInput(tag="in_network_two", input_type=Int(optional=True), prefix="--network-2", doc=InputDocumentation(doc="Input SeidrFile for network B")), ToolInput(tag="in_arg_a_a", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --index-a ] arg (=last score)  Merge scores on this index for network A")), ToolInput(tag="in_arg_network_b", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --index-b ] arg (=last score)  Merge scores on this index for network B")), ToolInput(tag="in_arg_translate_node", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --translate ] arg              Translate node names in network A\naccording to this table")), ToolInput(tag="in_print_overlap_nodes", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --nodes ]                      Print overlap of nodes instead of edges")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]                      Force overwrite output file if it exists")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (=-)           Output file name ['-' for stdout]")), ToolInput(tag="in_arg_auto_directory", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --tempdir ] arg (=auto)        Directory to store temporary data"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]                      Force overwrite output file if it exists")), ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (=-)           Output file name ['-' for stdout]"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Compare_V0_1_0().translate("wdl")


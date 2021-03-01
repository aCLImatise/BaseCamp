from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Kaiju_Mergeoutputs_V0_1_0 = CommandToolBuilder(tool="kaiju_mergeOutputs", base_command=["kaiju-mergeOutputs"], inputs=[ToolInput(tag="in_name_first_input", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of first input file")), ToolInput(tag="in_name_second_input", input_type=File(optional=True), prefix="-j", doc=InputDocumentation(doc="Name of second input file")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file.")), ToolInput(tag="in_conflict_resolution_mode", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Conflict resolution mode, must be 1, 2,  lca, or lowest (default: lca)")), ToolInput(tag="in_name_nodesdmp_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of nodes.dmp file, only required when -c is set to lca")), ToolInput(tag="in_use_th_column", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Use 4th column with classification score to give precedence to taxon with better score.")), ToolInput(tag="in_enable_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Enable verbose output, which will print a summary in the end.")), ToolInput(tag="in_enable_debug_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Enable debug output."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Mergeoutputs_V0_1_0().translate("wdl", allow_empty_container=True)


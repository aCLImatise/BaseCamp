from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Qpreroot_V0_1_0 = CommandToolBuilder(tool="qpreroot", base_command=["qpreroot"], inputs=[ToolInput(tag="in_use_parameters_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="... use parameters from <file> .")), ToolInput(tag="in_use_nam_root", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="... use <nam> as root name.")), ToolInput(tag="in__use_nam_as_graph_name", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="... use <nam> as graph name.")), ToolInput(tag="in__use_nam_as_out_graph_name", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="... use <nam> as out graph name.")), ToolInput(tag="in_use_nam_dot", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="... use <nam> as dot graph name.")), ToolInput(tag="in_use_nam_script", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="... use <nam> as script name.")), ToolInput(tag="in_delete_population_nam", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="... delete population <nam>.")), ToolInput(tag="in_toggle_hash_calculation", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="... toggle hash calculation ON.")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... print version and exit.")), ToolInput(tag="in_toggle_verbose_mode", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="... toggle verbose mode ON.")), ToolInput(tag="in_new_output_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="... new output format (edge not ledge etc.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qpreroot_V0_1_0().translate("wdl", allow_empty_container=True)


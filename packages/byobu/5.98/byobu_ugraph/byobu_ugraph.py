from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Byobu_Ugraph_V0_1_0 = CommandToolBuilder(tool="byobu_ugraph", base_command=["byobu-ugraph"], inputs=[ToolInput(tag="in_file_read_points", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc=": File to read data points from.\n(only required if no command specified).")), ToolInput(tag="in_minimum_value_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=": Minimum value (default=0).")), ToolInput(tag="in_supress_output_newline", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": Supress output of newline character.")), ToolInput(tag="in_specify_number_data", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc=": Specify number of data points in graph\n(default=5).")), ToolInput(tag="in_rotate_file_default", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": Do not rotate file <file> (default is to rotate).\nOption implies file <file> should not be written to\nso a command cannot follow script options in this case.")), ToolInput(tag="in_theme_use_defaultvbars", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=": 'byobu-ulevel' theme to use (default=vbars_8).")), ToolInput(tag="in_maximum_value_default", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc=": Maximum value (default=100).")), ToolInput(tag="in_by_obu_u_level_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Usage: byobu-ugraph [options] [command [args...]]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Ugraph_V0_1_0().translate("wdl", allow_empty_container=True)


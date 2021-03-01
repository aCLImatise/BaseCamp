from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Evofoldv2_V0_1_0 = CommandToolBuilder(tool="EvoFoldV2", base_command=["EvoFoldV2"], inputs=[ToolInput(tag="in_arg_path_evofold", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --configFilePath ] arg (=./) Path to EvoFold configuration files.")), ToolInput(tag="in_arg_output_complete", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --completeFile ] arg         Output complete structure predictions for\neach input element in addition to the\nsub-structures.")), ToolInput(tag="in_arg_name_use", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --annoName ] arg             Name of annotation to use (see annoMap file\nfor definition of annotation symbols. Note\nthat '*' can be used as wildcard.\nSpecifying annotation is useful for adding\nconstraints on the predicted structure.")), ToolInput(tag="in_decimals", input_type=Int(optional=True), prefix="--decimals", doc=InputDocumentation(doc="(=5)               Output precision of score.")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outputFile ] arg (=-)      Output file (default is stdout).")), ToolInput(tag="in_ev_of_old", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alg_do_tama", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_dot_neiw_ck", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --outputFile ] arg (=-)      Output file (default is stdout)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evofoldv2_V0_1_0().translate("wdl", allow_empty_container=True)


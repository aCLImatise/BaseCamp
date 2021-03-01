from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Ldhelmet_Find_Confs_V0_1_0 = CommandToolBuilder(tool="ldhelmet_find_confs", base_command=["ldhelmet", "find_confs"], inputs=[ToolInput(tag="in__display_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]                Display version.")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="(=1)          Number of threads to use.")), ToolInput(tag="in_arg_window_size", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[ --window_size ] arg (=50)  Window size.")), ToolInput(tag="in_arg_name_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output_file ] arg        Name for output file.")), ToolInput(tag="in_seq_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_two", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_name_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_name_output", type_hint=File()), doc=OutputDocumentation(doc="[ --output_file ] arg        Name for output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ldhelmet_Find_Confs_V0_1_0().translate("wdl", allow_empty_container=True)


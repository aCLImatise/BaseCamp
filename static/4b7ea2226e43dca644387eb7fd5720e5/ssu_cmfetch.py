from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ssu_Cmfetch_V0_1_0 = CommandToolBuilder(tool="ssu_cmfetch", base_command=["ssu-cmfetch"], inputs=[ToolInput(tag="in_second_cmdline_arg", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": second cmdline arg is a file of names to retrieve")), ToolInput(tag="in_output_cm_file_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output CM to file <f> instead of stdout")), ToolInput(tag="in_output_cm_file_named", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc=": output CM to file named <key>")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc=": index the <cmfile>, creating <cmfile>.ssi")), ToolInput(tag="in_cm_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_keyfile", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_key", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_cm_file_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_cm_file_stdout", type_hint=File()), doc=OutputDocumentation(doc=": output CM to file <f> instead of stdout")), ToolOutput(tag="out_output_cm_file_named", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_cm_file_named", type_hint=File()), doc=OutputDocumentation(doc=": output CM to file named <key>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Cmfetch_V0_1_0().translate("wdl", allow_empty_container=True)


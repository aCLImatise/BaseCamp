from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Utgcnsfix_V0_1_0 = CommandToolBuilder(tool="utgcnsfix", base_command=["utgcnsfix"], inputs=[ToolInput(tag="in_show_multialigns", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Show multialigns.")), ToolInput(tag="in_enable_debugging_option", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Enable debugging option 'verbosemultialign'.")), ToolInput(tag="in_only_fix_unitig", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="Only fix unitig 'iid'.")), ToolInput(tag="in_update_tigstore_fixes", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't update tigStore with any fixes.")), ToolInput(tag="in_do_anything_report", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Don't do anything, just report which unitigs are broken.")), ToolInput(tag="in_load_entire_gkpstore", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Load the entire gkpStore into memory (faster, but more memory)")), ToolInput(tag="in_partitioned_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Partitioned output file.  If 'partition' is not '.' or '0' this must\nbe supplied.\n")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_partition", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_partitioned_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_partitioned_output_file", type_hint=File()), doc=OutputDocumentation(doc="Partitioned output file.  If 'partition' is not '.' or '0' this must\nbe supplied.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Utgcnsfix_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Crisprtools_Rm_V0_1_0 = CommandToolBuilder(tool="crisprtools_rm", base_command=["crisprtools", "rm"], inputs=[ToolInput(tag="in_comma_separated_list", input_type=String(), prefix="-g", doc=InputDocumentation(doc="a comma separated list of group IDs that you would like to remove")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name. Default behaviour changes file inplace")), ToolInput(tag="in_remove_associated_files", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Remove associated files"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name. Default behaviour changes file inplace"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crisprtools_Rm_V0_1_0().translate("wdl", allow_empty_container=True)


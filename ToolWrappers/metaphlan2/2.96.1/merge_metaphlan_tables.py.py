from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Merge_Metaphlan_Tables_Py_V0_1_0 = CommandToolBuilder(tool="merge_metaphlan_tables.py", base_command=["merge_metaphlan_tables.py"], inputs=[ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file in which joined tables are saved")), ToolInput(tag="in_input_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="One or more tab-delimited text tables to join"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file in which joined tables are saved"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Metaphlan_Tables_Py_V0_1_0().translate("wdl", allow_empty_container=True)


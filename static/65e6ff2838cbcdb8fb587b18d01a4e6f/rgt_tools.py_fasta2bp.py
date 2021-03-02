from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgt_Tools_Py_Fasta2Bp_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_fasta2bp", base_command=["rgt-tools.py", "fasta2bp"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input FASTA file or directory")), ToolInput(tag="in_output_file_table", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file with a table"))], outputs=[ToolOutput(tag="out_output_file_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_table", type_hint=File()), doc=OutputDocumentation(doc="Output file with a table"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Fasta2Bp_V0_1_0().translate("wdl", allow_empty_container=True)


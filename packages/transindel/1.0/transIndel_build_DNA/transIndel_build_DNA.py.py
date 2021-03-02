from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Transindel_Build_Dna_Py_V0_1_0 = CommandToolBuilder(tool="transIndel_build_DNA.py", base_command=["transIndel_build_DNA.py"], inputs=[ToolInput(tag="in_mapq_cut_off", input_type=Boolean(optional=True), prefix="--mapq_cutoff", doc=InputDocumentation(doc=":minimal MapQ in SAM for support SV event, default 15")), ToolInput(tag="in_max_del_length", input_type=Boolean(optional=True), prefix="--max_del_length", doc=InputDocumentation(doc=":maximum deletion length to be detected (10e6)")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transindel_Build_Dna_Py_V0_1_0().translate("wdl", allow_empty_container=True)


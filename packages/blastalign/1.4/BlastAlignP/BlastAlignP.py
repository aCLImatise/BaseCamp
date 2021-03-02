from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Blastalignp_V0_1_0 = CommandToolBuilder(tool="BlastAlignP", base_command=["BlastAlignP"], inputs=[ToolInput(tag="in_tf_leave_replace", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default = T")), ToolInput(tag="in_max_proportion_gaps", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<max proportion of gaps allowed in any one sequence in the final alignment> Optional; default = 0.95")), ToolInput(tag="in_tf_retain_names", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="<T/F> Retain original names in output file. T(rue)/F(alse). Optional; default = T; option F is to output the 15 character abbreviations stripped of potentially problematic symbols which is used in the program")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_tf_retain_names", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tf_retain_names", type_hint=File()), doc=OutputDocumentation(doc="<T/F> Retain original names in output file. T(rue)/F(alse). Optional; default = T; option F is to output the 15 character abbreviations stripped of potentially problematic symbols which is used in the program"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastalignp_V0_1_0().translate("wdl", allow_empty_container=True)


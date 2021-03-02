from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Phmm_V0_1_0 = CommandToolBuilder(tool="phmm", base_command=["phmm"], inputs=[ToolInput(tag="in_log_probability", input_type=Boolean(optional=True), prefix="--logprobability", doc=InputDocumentation(doc="Specify that program should output probabilities as logs (base 10).\nDefault is to output probabilties.")), ToolInput(tag="in_max_likelihood", input_type=Boolean(optional=True), prefix="--maxlikelihood", doc=InputDocumentation(doc="Specify that program should output a maximum likelihood alignment.\nDefault is to output pairwise probabilities.")), ToolInput(tag="in_seq_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_file", output_type=File(), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phmm_V0_1_0().translate("wdl", allow_empty_container=True)


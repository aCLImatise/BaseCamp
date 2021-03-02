from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Deepac_Vir_Explain_Transfac2Ic_V0_1_0 = CommandToolBuilder(tool="deepac_vir_explain_transfac2IC", base_command=["deepac-vir", "explain", "transfac2IC"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="File containing all filter motifs in transfac format")), ToolInput(tag="in_train", input_type=String(optional=True), prefix="--train", doc=InputDocumentation(doc="Training data set (.npy) to normalize for GC-content")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="Name of the output file\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_explain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_transfac_two_ic", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file\n"))], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Explain_Transfac2Ic_V0_1_0().translate("wdl")


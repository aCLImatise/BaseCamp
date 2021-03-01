from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pxrecode_V0_1_0 = CommandToolBuilder(tool="pxrecode", base_command=["pxrecode"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_recode", input_type=String(optional=True), prefix="--recode", doc=InputDocumentation(doc="string identifying recoding scheme (default: RY)\nSupported recodings (use any valid combination):\nR = A|G\nY = C|T\nS = C|G\nW = A|T\nM = A|C\nK = G|T\nB = C|G|T\nD = A|G|T\nH = A|C|T\nV = A|C|G")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output sequence file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxrecode_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pxrevcomp_V0_1_0 = CommandToolBuilder(tool="pxrevcomp", base_command=["pxrevcomp"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_ids", input_type=String(optional=True), prefix="--ids", doc=InputDocumentation(doc="a comma sep list of ids to flip (NO SPACES!)")), ToolInput(tag="in_guess", input_type=Boolean(optional=True), prefix="--guess", doc=InputDocumentation(doc="EXPERIMENTAL: guess whether there are seqs that need to be\nrev comp. uses edlib library on first seq")), ToolInput(tag="in_p_guess", input_type=Boolean(optional=True), prefix="--pguess", doc=InputDocumentation(doc="EXPERIMENTAL: progressively guess")), ToolInput(tag="in_s_guess", input_type=Boolean(optional=True), prefix="--sguess", doc=InputDocumentation(doc="EXPERIMENTAL: sampled guess")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output sequence file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxrevcomp_V0_1_0().translate("wdl")


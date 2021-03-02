from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Pxsw_V0_1_0 = CommandToolBuilder(tool="pxsw", base_command=["pxsw"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output score/distance file, STOUT otherwise")), ToolInput(tag="in_out_a_lnf", input_type=File(optional=True), prefix="--outalnf", doc=InputDocumentation(doc="output sequence file, won't output otherwise")), ToolInput(tag="in_seqtype", input_type=Int(optional=True), prefix="--seqtype", doc=InputDocumentation(doc="sequence type, default=DNA (DNA=0,AA=1)")), ToolInput(tag="in_matrix", input_type=File(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scoring matrix, default DNA=EDNAFULL, AA=BLOSUM62")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="number of threads (open mp), default=2")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="make the output more verbose, turns off parallel")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output score/distance file, STOUT otherwise")), ToolOutput(tag="out_out_a_lnf", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_a_lnf", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, won't output otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxsw_V0_1_0().translate("wdl")


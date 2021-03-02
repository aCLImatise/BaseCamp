from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxrls_V0_1_0 = CommandToolBuilder(tool="pxrls", base_command=["pxrls"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input seq file, STDIN otherwise")), ToolInput(tag="in_c_names", input_type=File(optional=True), prefix="--cnames", doc=InputDocumentation(doc="file containing current taxon labels (one per line)")), ToolInput(tag="in_n_names", input_type=File(optional=True), prefix="--nnames", doc=InputDocumentation(doc="file containing new taxon labels (one per line)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="make the output more verbose")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxrls_V0_1_0().translate("wdl")


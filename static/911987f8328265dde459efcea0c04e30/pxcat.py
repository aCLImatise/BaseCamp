from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxcat_V0_1_0 = CommandToolBuilder(tool="pxcat", base_command=["pxcat"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="list of input sequence files (space delimited)")), ToolInput(tag="in_f_list_file", input_type=Boolean(optional=True), prefix="--flistFILE", doc=InputDocumentation(doc="file listing input files (one per line)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output sequence file, STOUT otherwise")), ToolInput(tag="in_part_f", input_type=File(optional=True), prefix="--partf", doc=InputDocumentation(doc="output partition file, none otherwise")), ToolInput(tag="in_uppercase", input_type=Boolean(optional=True), prefix="--uppercase", doc=InputDocumentation(doc="export characters in uppercase")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, STOUT otherwise")), ToolOutput(tag="out_part_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_part_f", type_hint=File()), doc=OutputDocumentation(doc="output partition file, none otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxcat_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bp_Mrtrans_Pl_V0_1_0 = CommandToolBuilder(tool="bp_mrtrans.pl", base_command=["bp_mrtrans.pl"], inputs=[ToolInput(tag="in__output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="- the output filename [default STDOUT]")), ToolInput(tag="in_of", input_type=String(optional=True), prefix="-of", doc=InputDocumentation(doc="- output sequence format\n(multiple sequence alignment)\n[default phylip]")), ToolInput(tag="in__input_filename", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="- the input filename [required]")), ToolInput(tag="in_if", input_type=String(optional=True), prefix="-if", doc=InputDocumentation(doc="- input sequence format\n(multiple sequence alignment)\n[ default clustalw]")), ToolInput(tag="in_seq_db", input_type=File(optional=True), prefix="--seqdb", doc=InputDocumentation(doc="- the cDNA sequence database file")), ToolInput(tag="in_seq_format", input_type=Boolean(optional=True), prefix="--seqformat", doc=InputDocumentation(doc="- the cDNA seq db format (flatfile sequence format)")), ToolInput(tag="in_coordinates", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS"))], outputs=[ToolOutput(tag="out__output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_filename", type_hint=File()), doc=OutputDocumentation(doc="- the output filename [default STDOUT]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Mrtrans_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Coords2Clnt_Py_V0_1_0 = CommandToolBuilder(tool="coords2clnt.py", base_command=["coords2clnt.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write results to this file.")), ToolInput(tag="in_three_prime", input_type=Boolean(optional=True), prefix="--threeprime", doc=InputDocumentation(doc="Set position one nt downstream of 3'-end as\ncrosslinked nucleotide.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print lots of debugging information")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to bed input file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coords2Clnt_Py_V0_1_0().translate("wdl", allow_empty_container=True)


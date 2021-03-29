from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Make_Kreport_Py_V0_1_0 = CommandToolBuilder(tool="make_kreport.py", base_command=["make_kreport.py"], inputs=[ToolInput(tag="in_kraken", input_type=File(optional=True), prefix="--kraken", doc=InputDocumentation(doc="Kraken output file (5 tab-delimited columns, taxid in\n3rd column)")), ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Output taxonomy file from make_ktaxonomy.py")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output kraken report file")), ToolInput(tag="in_use_read_len", input_type=Boolean(optional=True), prefix="--use-read-len", doc=InputDocumentation(doc="Make report file using sum of read lengths [default:\nread counts]\n"))], outputs=[ToolOutput(tag="out_kraken", output_type=File(optional=True), selector=InputSelector(input_to_select="in_kraken", type_hint=File()), doc=OutputDocumentation(doc="Kraken output file (5 tab-delimited columns, taxid in\n3rd column)")), ToolOutput(tag="out_taxonomy", output_type=File(optional=True), selector=InputSelector(input_to_select="in_taxonomy", type_hint=File()), doc=OutputDocumentation(doc="Output taxonomy file from make_ktaxonomy.py")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output kraken report file"))], container="quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Kreport_Py_V0_1_0().translate("wdl")


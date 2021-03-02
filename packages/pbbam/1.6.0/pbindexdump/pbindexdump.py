from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pbindexdump_V0_1_0 = CommandToolBuilder(tool="pbindexdump", base_command=["pbindexdump"], inputs=[ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="STR   Output format. Valid choices: (json, cpp). [json]")), ToolInput(tag="in_json_indent_level", input_type=Boolean(optional=True), prefix="--json-indent-level", doc=InputDocumentation(doc="INT   JSON indent level. [4]")), ToolInput(tag="in_json_raw", input_type=Boolean(optional=True), prefix="--json-raw", doc=InputDocumentation(doc="Print fields in a layout that more closely reflects the PBI file format (per-field\ncolumns, not per-record objects.")), ToolInput(tag="in_input_do_tba_mdot_pbi", input_type=String(), position=0, doc=InputDocumentation(doc="FILE  Input PBI file. If not provided, stdin will be used as input."))], outputs=[], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbindexdump_V0_1_0().translate("wdl")


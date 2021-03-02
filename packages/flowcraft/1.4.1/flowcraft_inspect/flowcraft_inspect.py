from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Flowcraft_Inspect_V0_1_0 = CommandToolBuilder(tool="flowcraft_inspect", base_command=["flowcraft", "inspect"], inputs=[ToolInput(tag="in_specify_trace_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Specify the nextflow trace file.")), ToolInput(tag="in_set_refresh_frequency", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Set the refresh frequency for the continuous inspect")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Specify the URL to where the data should be broadcast")), ToolInput(tag="in_pretty", input_type=Boolean(optional=True), prefix="--pretty", doc=InputDocumentation(doc="Pretty inspection mode that removes usual reporting\nprocesses.\n")), ToolInput(tag="in_functions", input_type=String(), position=0, doc=InputDocumentation(doc="-m {overview,broadcast}, --mode {overview,broadcast}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flowcraft_Inspect_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Frequency_Py_V0_1_0 = CommandToolBuilder(tool="frequency.py", base_command=["frequency.py"], inputs=[ToolInput(tag="in_detail_filename", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="detail filename")), ToolInput(tag="in_final_filename", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="final filename")), ToolInput(tag="in_config_filename", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="config filename")), ToolInput(tag="in_print_column_headers", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="do not print column headers"))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frequency_Py_V0_1_0().translate("wdl")


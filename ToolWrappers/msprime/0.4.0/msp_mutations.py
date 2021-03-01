from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Msp_Mutations_V0_1_0 = CommandToolBuilder(tool="msp_mutations", base_command=["msp", "mutations"], inputs=[ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Print a header line in the output.")), ToolInput(tag="in_precision", input_type=Float(optional=True), prefix="--precision", doc=InputDocumentation(doc="The number of decimal places to print in records\n")), ToolInput(tag="in_history_file", input_type=String(), position=0, doc=InputDocumentation(doc="The msprime history file in HDF5 format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msp_Mutations_V0_1_0().translate("wdl", allow_empty_container=True)


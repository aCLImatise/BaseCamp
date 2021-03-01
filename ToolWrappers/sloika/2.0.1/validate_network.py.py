from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Validate_Network_Py_V0_1_0 = CommandToolBuilder(tool="validate_network.py", base_command=["validate_network.py"], inputs=[ToolInput(tag="in_no_bad", input_type=Boolean(optional=True), prefix="--no-bad", doc=InputDocumentation(doc="Use bad events as a separate state (Default: --bad)\n(default: True)")), ToolInput(tag="in_batch", input_type=Int(optional=True), prefix="--batch", doc=InputDocumentation(doc="Batch size (number of chunks to run in parallel)\n(default: 200)")), ToolInput(tag="in_no_transducer", input_type=Boolean(optional=True), prefix="--no-transducer", doc=InputDocumentation(doc="Model is a transducer (Default: --transducer)\n(default: True)")), ToolInput(tag="in_model", input_type=String(), position=0, doc=InputDocumentation(doc="File to read model description from")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="HDF5 file containing chunks"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Network_Py_V0_1_0().translate("wdl", allow_empty_container=True)


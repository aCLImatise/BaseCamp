from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float

Verify_Network_Py_V0_1_0 = CommandToolBuilder(tool="verify_network.py", base_command=["verify_network.py"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="Length of kmer (default: 5)")), ToolInput(tag="in_n_feature", input_type=Int(optional=True), prefix="--nfeature", doc=InputDocumentation(doc="Number of features to input to network (default: 4)")), ToolInput(tag="in_sd", input_type=Float(optional=True), prefix="--sd", doc=InputDocumentation(doc="Standard deviation to initialise with (default: 0.5)")), ToolInput(tag="in_stride", input_type=Int(optional=True), prefix="--stride", doc=InputDocumentation(doc="Stride of model or None for no stride (default: 1)")), ToolInput(tag="in_win_len", input_type=Int(optional=True), prefix="--winlen", doc=InputDocumentation(doc="Length of window over data (default: 3)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verify_Network_Py_V0_1_0().translate("wdl", allow_empty_container=True)


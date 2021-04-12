from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cobs_Print_Parameters_V0_1_0 = CommandToolBuilder(tool="cobs_print_parameters", base_command=["cobs", "print-parameters"], inputs=[ToolInput(tag="in_false_positive_rate", input_type=Boolean(optional=True), prefix="--false-positive-rate", doc=InputDocumentation(doc="false positive rate, default: 0.3")), ToolInput(tag="in_num_elements", input_type=Boolean(optional=True), prefix="--num-elements", doc=InputDocumentation(doc="number of elements to be inserted into the index"))], outputs=[], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Print_Parameters_V0_1_0().translate("wdl")


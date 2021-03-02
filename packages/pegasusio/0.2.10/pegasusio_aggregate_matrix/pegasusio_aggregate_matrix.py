from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pegasusio_Aggregate_Matrix_V0_1_0 = CommandToolBuilder(tool="pegasusio_aggregate_matrix", base_command=["pegasusio", "aggregate_matrix"], inputs=[ToolInput(tag="in_csv_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pegasusio:0.2.10--py36h4c5857e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pegasusio_Aggregate_Matrix_V0_1_0().translate("wdl")


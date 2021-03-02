from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pathogist_Correlation_V0_1_0 = CommandToolBuilder(tool="PATHOGIST_correlation", base_command=["PATHOGIST", "correlation"], inputs=[ToolInput(tag="in_all_constraints", input_type=Boolean(optional=True), prefix="--all_constraints", doc=InputDocumentation(doc="add all constraints to the optimization problem, not\njust those with mixed signs.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Method for correlation clustering\n")), ToolInput(tag="in_distance_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="path to the distance matrix file")), ToolInput(tag="in_threshold", input_type=String(), position=1, doc=InputDocumentation(doc="threshold value for correlation")), ToolInput(tag="in_output_path", input_type=String(), position=2, doc=InputDocumentation(doc="path to write cluster output tsv file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogist_Correlation_V0_1_0().translate("wdl", allow_empty_container=True)


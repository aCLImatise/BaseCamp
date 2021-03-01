from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Stringmeup_Confidence_V0_1_0 = CommandToolBuilder(tool="stringmeup_confidence", base_command=["stringmeup", "confidence"], inputs=[ToolInput(tag="in_gz_output", input_type=Boolean(optional=True), prefix="--gz_output", doc=InputDocumentation(doc="")), ToolInput(tag="in_minimum_hit_groups", input_type=Int(optional=True), prefix="--minimum_hit_groups", doc=InputDocumentation(doc="")), ToolInput(tag="in_keep_unclassified", input_type=Boolean(optional=True), prefix="--keep_unclassified", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_verbose", input_type=File(optional=True), prefix="--output_verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_classifications", input_type=File(optional=True), prefix="--output_classifications", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_report", input_type=File(optional=True), prefix="--output_report", doc=InputDocumentation(doc="")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="")), ToolInput(tag="in_classifications", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/stringmeup:0.1.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stringmeup_Confidence_V0_1_0().translate("wdl")


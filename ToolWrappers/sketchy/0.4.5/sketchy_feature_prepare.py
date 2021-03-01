from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sketchy_Feature_Prepare_V0_1_0 = CommandToolBuilder(tool="sketchy_feature_prepare", base_command=["sketchy", "feature", "prepare"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to feature index input file  [required]")), ToolInput(tag="in_drop", input_type=String(optional=True), prefix="--drop", doc=InputDocumentation(doc="Comma separated string of columns to drop")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for prepared feature index output files"))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Feature_Prepare_V0_1_0().translate("wdl")


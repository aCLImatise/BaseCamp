from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sketchy_Feature_Drop_V0_1_0 = CommandToolBuilder(tool="sketchy_feature_drop", base_command=["sketchy", "feature", "drop"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to feature index input file.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to dropped feature index output file\n[index.dropped.tsv]")), ToolInput(tag="in_columns", input_type=String(optional=True), prefix="--columns", doc=InputDocumentation(doc="Comma-delimited string of columns to drop or 'clean'\n[clean]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to dropped feature index output file\n[index.dropped.tsv]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Feature_Drop_V0_1_0().translate("wdl", allow_empty_container=True)


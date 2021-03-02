from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Fmt_V0_1_0 = CommandToolBuilder(tool="fmt", base_command=["fmt"], inputs=[ToolInput(tag="in_crown_margin", input_type=Boolean(optional=True), prefix="--crown-margin", doc=InputDocumentation(doc="preserve indentation of first two lines")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="reformat only lines beginning with STRING,\nreattaching the prefix to reformatted lines")), ToolInput(tag="in_split_only", input_type=Boolean(optional=True), prefix="--split-only", doc=InputDocumentation(doc="split long lines, but do not refill")), ToolInput(tag="in_tagged_paragraph", input_type=Boolean(optional=True), prefix="--tagged-paragraph", doc=InputDocumentation(doc="indentation of first line different from second")), ToolInput(tag="in_uniform_spacing", input_type=Boolean(optional=True), prefix="--uniform-spacing", doc=InputDocumentation(doc="one space between words, two after sentences")), ToolInput(tag="in_maximum_line_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="maximum line width (default of 75 columns)")), ToolInput(tag="in_goal", input_type=Int(optional=True), prefix="--goal", doc=InputDocumentation(doc="goal width (default of 93% of width)")), ToolInput(tag="in_var_7", input_type=Boolean(optional=True), prefix="-WIDTH", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fmt_V0_1_0().translate("wdl", allow_empty_container=True)


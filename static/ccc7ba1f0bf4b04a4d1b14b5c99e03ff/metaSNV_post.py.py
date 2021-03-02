from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean

Metasnv_Post_Py_V0_1_0 = CommandToolBuilder(tool="metaSNV_post.py", base_command=["metaSNV_post.py"], inputs=[ToolInput(tag="in_coverage_breadth_minimal", input_type=Float(optional=True), prefix="-b", doc=InputDocumentation(doc="Coverage breadth: minimal horizontal genome coverage percentage\nper sample per species (default: 40.0)")), ToolInput(tag="in_coverage_depth_minimal", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc="Coverage depth: minimal average vertical genome coverage per\nsample per species (default: 5.0)")), ToolInput(tag="in_minimum_number_samples", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum number of samples per species (default: 2)")), ToolInput(tag="in_filtering_step_ii_minimum", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="FILTERING STEP II: minimum coverage per position per sample per\nspecies (default: 5.0)")), ToolInput(tag="in_filtering_step_ii_required", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="FILTERING STEP II: required proportion of informative samples\n(coverage non-zero) per position (default: 0.5)")), ToolInput(tag="in_div", input_type=Boolean(optional=True), prefix="-div", doc=InputDocumentation(doc="Compute diversity measures (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metasnv_Post_Py_V0_1_0().translate("wdl", allow_empty_container=True)


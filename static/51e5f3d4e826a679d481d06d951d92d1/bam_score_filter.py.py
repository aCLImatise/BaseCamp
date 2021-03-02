from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Bam_Score_Filter_Py_V0_1_0 = CommandToolBuilder(tool="bam_score_filter.py", base_command=["bam_score_filter.py"], inputs=[ToolInput(tag="in_inputoutput_format_sam", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Input/output format (SAM).")), ToolInput(tag="in_filtering_strategy_topperquery", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Filtering strategy: top_per_query, query_coverage,\nref_coverage (top_per_query).")), ToolInput(tag="in_minimum_query_coverage", input_type=Float(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum query coverage fraction (0.8).")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input file.")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="Output SAM file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Score_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Framebot_Index_V0_1_0 = CommandToolBuilder(tool="FrameBot_index", base_command=["FrameBot", "index"], inputs=[ToolInput(tag="in_gap_ext_penalty", input_type=Int(optional=True), prefix="--gap-ext-penalty", doc=InputDocumentation(doc="gap extension penalty. Default is -4")), ToolInput(tag="in_frameshift_penalty", input_type=Int(optional=True), prefix="--frameshift-penalty", doc=InputDocumentation(doc="frameshift penalty. Default is -10")), ToolInput(tag="in_gap_open_penalty", input_type=Int(optional=True), prefix="--gap-open-penalty", doc=InputDocumentation(doc="gap opening penalty. Default is -13")), ToolInput(tag="in_max_radius", input_type=Int(optional=True), prefix="--max-radius", doc=InputDocumentation(doc="maximum radius for metric-search ONLY, range [1-2147483647]>, default is\nInteger.MAX_VALUE: 2147483647")), ToolInput(tag="in_transl_table", input_type=Int(optional=True), prefix="--transl-table", doc=InputDocumentation(doc="Protein translation table to use (integer based on ncbi's translation tables,\ndefault=11 bacteria/archaea)")), ToolInput(tag="in_scoring_matrix", input_type=Int(optional=True), prefix="--scoring-matrix", doc=InputDocumentation(doc="the metric protein scoring matrix. Default is blosum62_metric.txt from Weijia Xu's\nthesis: On Integrating Biological Sequence Analysis with Metric Distance")), ToolInput(tag="in_frame_bot_index", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_nucl_seed_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_index_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_index_file", output_type=File(), selector=InputSelector(input_to_select="in_out_index_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Framebot_Index_V0_1_0().translate("wdl", allow_empty_container=True)


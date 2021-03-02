from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, Float, Boolean

Tombo_Filter_Q_Score_V0_1_0 = CommandToolBuilder(tool="tombo_filter_q_score", base_command=["tombo", "filter", "q_score"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_q_score", input_type=Float(optional=True), prefix="--q-score", doc=InputDocumentation(doc="Q-score threshold for filtering low quality reads.\nDefault: 7.000000")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_base_call_group", input_type=Int(optional=True), prefix="--basecall-group", doc=InputDocumentation(doc="FAST5 group obtain original basecalls (under Analyses\ngroup). Default: Basecall_1D_000")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Filter_Q_Score_V0_1_0().translate("wdl", allow_empty_container=True)


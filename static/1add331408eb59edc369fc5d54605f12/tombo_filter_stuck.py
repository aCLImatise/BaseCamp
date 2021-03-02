from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, String, Boolean

Tombo_Filter_Stuck_V0_1_0 = CommandToolBuilder(tool="tombo_filter_stuck", base_command=["tombo", "filter", "stuck"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_obs_per_base_filter", input_type=Array(t=String(), optional=True), prefix="--obs-per-base-filter", doc=InputDocumentation(doc="Filter reads based on observations per base percentile\nthresholds. Format thresholds as 'percentile:thresh\n[pctl2:thresh2 ...]'. For example to filter reads with\n99th pctl > 200 obs/base or max > 5k obs/base use\n'99:200 100:5000'.")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Filter_Stuck_V0_1_0().translate("wdl", allow_empty_container=True)


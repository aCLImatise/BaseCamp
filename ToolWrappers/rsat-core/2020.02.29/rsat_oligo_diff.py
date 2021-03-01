from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Oligo_Diff_V0_1_0 = CommandToolBuilder(tool="rsat_oligo_diff", base_command=["rsat", "oligo-diff"], inputs=[ToolInput(tag="in_oligo_diff", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_jacques_do_tv_and_otheldenatulbdotacdotbe", input_type=String(), position=0, doc=InputDocumentation(doc="[1mCATEGORY[0m")), ToolInput(tag="in_util", input_type=String(), position=1, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_format_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-ctrl control_seq_file[0m")), ToolInput(tag="in_occurrences_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-l oligo_length[0m")), ToolInput(tag="in_respectively_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-return maps[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Oligo_Diff_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mercounterth_56Mer_V0_1_0 = CommandToolBuilder(tool="merCounterTh_56mer", base_command=["merCounterTh_56mer"], inputs=[ToolInput(tag="in_mer_size", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_count_to_report", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_threads", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix_list_to_hash", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_descriptor_file", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_trim_flag", input_type=String(optional=True), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mercounterth_56Mer_V0_1_0().translate("wdl", allow_empty_container=True)


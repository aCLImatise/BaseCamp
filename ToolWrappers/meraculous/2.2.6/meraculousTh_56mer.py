from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Meraculousth_56Mer_V0_1_0 = CommandToolBuilder(tool="meraculousTh_56mer", base_command=["meraculousTh_56mer"], inputs=[ToolInput(tag="in_u_fx_file_wildcard", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mer_size", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_num_threads", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_expected_num_elements", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_min", input_type=Int(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_contig", input_type=String(optional=True), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(optional=True), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_debug_mode", input_type=String(optional=True), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_seed_list_filename", input_type=String(optional=True), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meraculousth_56Mer_V0_1_0().translate("wdl", allow_empty_container=True)


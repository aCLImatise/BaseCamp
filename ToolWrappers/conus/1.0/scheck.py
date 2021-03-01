from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Scheck_V0_1_0 = CommandToolBuilder(tool="scheck", base_command=["scheck"], inputs=[ToolInput(tag="in_assume_khs_reversed", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": Assume KHS is reversed -- as in Infernal output")), ToolInput(tag="in_print_ct_output", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": print ct output format for predicted structure")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_s_test", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_in", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scheck_V0_1_0().translate("wdl", allow_empty_container=True)


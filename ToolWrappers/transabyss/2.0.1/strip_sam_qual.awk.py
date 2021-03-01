from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Strip_Sam_Qual_Awk_V0_1_0 = CommandToolBuilder(tool="strip_sam_qual.awk", base_command=["strip_sam_qual.awk"], inputs=[ToolInput(tag="in_val_set_variable", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="=VAL      Set variable")), ToolInput(tag="in_use_sep_field", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="Use SEP as field separator")), ToolInput(tag="in_read_program_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Read program from FILE")), ToolInput(tag="in_awk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_awk_program", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strip_Sam_Qual_Awk_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Correct_Olaps_V0_1_0 = CommandToolBuilder(tool="correct_olaps", base_command=["correct-olaps"], inputs=[ToolInput(tag="in_specifies_binary_file", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="specifies binary file to dump corrected erates to\nfor later updating of olap store by  update-erates")), ToolInput(tag="in_specify_file_use", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="specify file of sorted overlaps to use (in the format\nproduced by  get-olaps")), ToolInput(tag="in_specifies_name_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="specifies name of file to which OVL messages go")), ToolInput(tag="in_overlaps_less_areautomatically", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="overlaps less than this error rate are\nautomatically output")), ToolInput(tag="in_specify_binary_store", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="specify the binary overlap store containing overlaps to use")), ToolInput(tag="in_specify_level_verbose", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="specify level of verbose outputs, higher is more")), ToolInput(tag="in_specifies_name_where", input_type=File(optional=True), prefix="-X", doc=InputDocumentation(doc="specifies name of file where list of ovl's to delete goes")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correct_Olaps_V0_1_0().translate("wdl", allow_empty_container=True)


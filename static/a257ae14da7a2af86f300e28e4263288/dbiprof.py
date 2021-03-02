from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Dbiprof_V0_1_0 = CommandToolBuilder(tool="dbiprof", base_command=["dbiprof"], inputs=[ToolInput(tag="in_number", input_type=Int(optional=True), prefix="-number", doc=InputDocumentation(doc="show top N, defaults to 10")), ToolInput(tag="in_sort", input_type=String(optional=True), prefix="-sort", doc=InputDocumentation(doc="sort by S, defaults to total")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="-reverse", doc=InputDocumentation(doc="reverse the sort")), ToolInput(tag="in_match", input_type=String(optional=True), prefix="-match", doc=InputDocumentation(doc="=V       for filtering, see docs")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="-exclude", doc=InputDocumentation(doc="=V     for filtering, see docs")), ToolInput(tag="in_case_sensitive", input_type=Boolean(optional=True), prefix="-case_sensitive", doc=InputDocumentation(doc="for -match and -exclude")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="-delete", doc=InputDocumentation(doc="rename files before reading then delete afterwards")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="print version number and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbiprof_V0_1_0().translate("wdl", allow_empty_container=True)


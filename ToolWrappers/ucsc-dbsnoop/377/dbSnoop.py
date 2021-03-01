from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dbsnoop_V0_1_0 = CommandToolBuilder(tool="dbSnoop", base_command=["dbSnoop"], inputs=[ToolInput(tag="in_unsplit", input_type=Boolean(optional=True), prefix="-unsplit", doc=InputDocumentation(doc="- if set will merge together tables split by chromosome")), ToolInput(tag="in_no_number_commas", input_type=Boolean(optional=True), prefix="-noNumberCommas", doc=InputDocumentation(doc="- if set will leave out commas in big numbers")), ToolInput(tag="in_just_schema", input_type=Boolean(optional=True), prefix="-justSchema", doc=InputDocumentation(doc="- only schema parts, no contents")), ToolInput(tag="in_skip_table", input_type=String(optional=True), prefix="-skipTable", doc=InputDocumentation(doc="- if set skip a given table name")), ToolInput(tag="in_profile", input_type=String(optional=True), prefix="-profile", doc=InputDocumentation(doc="- use profile for connection settings, default = 'db'")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbsnoop_V0_1_0().translate("wdl", allow_empty_container=True)


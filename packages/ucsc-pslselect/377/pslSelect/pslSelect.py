from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pslselect_V0_1_0 = CommandToolBuilder(tool="pslSelect", base_command=["pslSelect"], inputs=[ToolInput(tag="in_qt_pairs", input_type=File(optional=True), prefix="-qtPairs", doc=InputDocumentation(doc="- file is tab-separated qName and tName pairs to select")), ToolInput(tag="in_qpass", input_type=Boolean(optional=True), prefix="-qPass", doc=InputDocumentation(doc="- pass all PSLs with queries that do not appear in qtPairs file at all\n(default is to remove all PSLs for queries that are not in file)")), ToolInput(tag="in_queries", input_type=File(optional=True), prefix="-queries", doc=InputDocumentation(doc="- file has qNames to select")), ToolInput(tag="in_query_pairs", input_type=File(optional=True), prefix="-queryPairs", doc=InputDocumentation(doc="- file is tab-separated pairs of qNames to select\nwith new qName to substitute in output file")), ToolInput(tag="in_qt_start", input_type=File(optional=True), prefix="-qtStart", doc=InputDocumentation(doc="- file is tab-separate rows of qName,tName,tStart")), ToolInput(tag="in_q_delim", input_type=String(optional=True), prefix="-qDelim", doc=InputDocumentation(doc="- use only the part of the query name before this character")), ToolInput(tag="in_in_psl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_query_pairs", output_type=File(optional=True), selector=InputSelector(input_to_select="in_query_pairs", type_hint=File()), doc=OutputDocumentation(doc="- file is tab-separated pairs of qNames to select\nwith new qName to substitute in output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslselect_V0_1_0().translate("wdl", allow_empty_container=True)


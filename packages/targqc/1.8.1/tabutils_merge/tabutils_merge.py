from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Tabutils_Merge_V0_1_0 = CommandToolBuilder(tool="tabutils_merge", base_command=["tabutils", "merge"], inputs=[ToolInput(tag="in_header_comment", input_type=Boolean(optional=True), prefix="-headercomment", doc=InputDocumentation(doc="the header is last commented line ('#')")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="-noheader", doc=InputDocumentation(doc="the files have no header row")), ToolInput(tag="in_no_missing", input_type=Boolean(optional=True), prefix="-nomissing", doc=InputDocumentation(doc="discard rows with missing values")), ToolInput(tag="in_collate", input_type=Boolean(optional=True), prefix="-collate", doc=InputDocumentation(doc="order uncommon values by file first, not column")), ToolInput(tag="in_key_cols", input_type=Int(optional=True), prefix="-keycols", doc=InputDocumentation(doc=",col   if there are missing values, use these columns to\ndetermine which file has missing data.  If the col ends\nin 'n', this is taken to be a number.\n(defaults to common cols, in order)")), ToolInput(tag="in_key_desc", input_type=Boolean(optional=True), prefix="-keydesc", doc=InputDocumentation(doc="keys are sorted descending order\n(defaults to ascending)")), ToolInput(tag="in_tab_merge_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabutils_Merge_V0_1_0().translate("wdl", allow_empty_container=True)


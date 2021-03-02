from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Hgloadsqltab_V0_1_0 = CommandToolBuilder(tool="hgLoadSqlTab", base_command=["hgLoadSqlTab"], inputs=[ToolInput(tag="in_warn", input_type=Boolean(optional=True), prefix="-warn", doc=InputDocumentation(doc="- warn instead of abort on mysql errors or warnings")), ToolInput(tag="in_not_on_server", input_type=Boolean(optional=True), prefix="-notOnServer", doc=InputDocumentation(doc="- file is *not* in a directory that the mysql server can see")), ToolInput(tag="in_old_table", input_type=Boolean(optional=True), prefix="-oldTable", doc=InputDocumentation(doc="- add to existing table")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_table", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_sql", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadsqltab_V0_1_0().translate("wdl", allow_empty_container=True)


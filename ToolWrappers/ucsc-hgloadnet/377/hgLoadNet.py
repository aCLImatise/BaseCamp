from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Hgloadnet_V0_1_0 = CommandToolBuilder(tool="hgLoadNet", base_command=["hgLoadNet"], inputs=[ToolInput(tag="in_no_bin", input_type=Boolean(optional=True), prefix="-noBin", doc=InputDocumentation(doc="suppress bin field")), ToolInput(tag="in_old_table", input_type=String(optional=True), prefix="-oldTable", doc=InputDocumentation(doc="to existing table")), ToolInput(tag="in_sql_table", input_type=File(optional=True), prefix="-sqlTable", doc=InputDocumentation(doc="Create table from .sql file")), ToolInput(tag="in_q_prefix", input_type=String(optional=True), prefix="-qPrefix", doc=InputDocumentation(doc="prepend 'xxx-' to query name")), ToolInput(tag="in_warn", input_type=String(optional=True), prefix="-warn", doc=InputDocumentation(doc="even with missing fields")), ToolInput(tag="in_test", input_type=String(optional=True), prefix="-test", doc=InputDocumentation(doc="loading table")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_track", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadnet_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Sonlib_Kvdatabasetest_V0_1_0 = CommandToolBuilder(tool="sonLib_kvDatabaseTest", base_command=["sonLib_kvDatabaseTest"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="- one of 'KyotoTycoon', 'TokyoCabinet' or 'MySql'.\nValues area case-insensitive, defaults to TokyoCabinet.")), ToolInput(tag="in_db", input_type=Directory(optional=True), prefix="--db", doc=InputDocumentation(doc="- database directory for TokyoCabinet or database name\nfor SQL databases. Defaults to testTCDatabase for TokyoCabinet,\nSQL databases must specify.")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="- Tycoon or SQL database host, defaults to localhost")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="- Tycoon or SQL database port.")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="- SQL database user.")), ToolInput(tag="in_pass", input_type=String(optional=True), prefix="--pass", doc=InputDocumentation(doc="- SQL database password."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sonlib_Kvdatabasetest_V0_1_0().translate("wdl", allow_empty_container=True)


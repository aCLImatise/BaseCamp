from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Chado_Admin_Setup_V0_1_0 = CommandToolBuilder(tool="chado_admin_setup", base_command=["chado", "admin", "setup"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="YAML file containing connection details")), ToolInput(tag="in_use_password", input_type=Boolean(optional=True), prefix="--use_password", doc=InputDocumentation(doc="connect with password (default: no password)")), ToolInput(tag="in_schema", input_type=String(optional=True), prefix="--schema", doc=InputDocumentation(doc="Database schema (default: GMOD schema 1.31)")), ToolInput(tag="in_schema_file", input_type=File(optional=True), prefix="--schema_file", doc=InputDocumentation(doc="File with database schema\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chado_Admin_Setup_V0_1_0().translate("wdl", allow_empty_container=True)


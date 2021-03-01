from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pwiz_Py_V0_1_0 = CommandToolBuilder(tool="pwiz.py", base_command=["pwiz.py"], inputs=[ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Database type, e.g. sqlite, mysql or postgresql.\nDefault is 'postgresql'.")), ToolInput(tag="in_schema", input_type=String(optional=True), prefix="--schema", doc=InputDocumentation(doc="Only generate the specified tables. Multiple table\nnames should be separated by commas.")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Add database information and other metadata to top of\nthe generated file.")), ToolInput(tag="in_preserve_order", input_type=Boolean(optional=True), prefix="--preserve-order", doc=InputDocumentation(doc="Model definition column ordering matches source table.")), ToolInput(tag="in_database_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pwiz_Py_V0_1_0().translate("wdl", allow_empty_container=True)


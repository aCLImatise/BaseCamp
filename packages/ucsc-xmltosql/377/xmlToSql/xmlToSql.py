from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Xmltosql_V0_1_0 = CommandToolBuilder(tool="xmlToSql", base_command=["xmlToSql"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="-prefix", doc=InputDocumentation(doc="- A name to prefix all tables with")), ToolInput(tag="in_text_field", input_type=String(optional=True), prefix="-textField", doc=InputDocumentation(doc="- Name to use for text field (default 'text')")), ToolInput(tag="in_max_promote_size", input_type=Int(optional=True), prefix="-maxPromoteSize", doc=InputDocumentation(doc="- Maximum size (default 32) for a element that\njust defines a string to be promoted to a field\nin parent table\n")), ToolInput(tag="in_in_dot_xml", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_dtd", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_stats", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xmltosql_V0_1_0().translate("wdl", allow_empty_container=True)


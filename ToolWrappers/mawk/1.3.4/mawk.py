from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mawk_V0_1_0 = CommandToolBuilder(tool="mawk", base_command=["mawk"], inputs=[ToolInput(tag="in_program_text_read", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Program  text is read from file instead of from the")), ToolInput(tag="in_sets_field_separator", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="sets the field separator, FS, to value.")), ToolInput(tag="in_value_assigns_value", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="=value     assigns value to program variable var.")), ToolInput(tag="in_command_line_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Multiple -f options are accepted."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mawk_V0_1_0().translate("wdl", allow_empty_container=True)


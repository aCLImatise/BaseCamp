from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Float

Erb_V0_1_0 = CommandToolBuilder(tool="erb", base_command=["erb"], inputs=[ToolInput(tag="in_print_ruby_script", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="print ruby script")), ToolInput(tag="in_print_ruby_script_line", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="print ruby script with line number")), ToolInput(tag="in_enable_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="enable verbose mode")), ToolInput(tag="in_set_debug_true", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="set $DEBUG to true")), ToolInput(tag="in_load_a_library", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="load a library")), ToolInput(tag="in_set_safe_", input_type=Float(optional=True), prefix="-S", doc=InputDocumentation(doc="set $SAFE (0..3)")), ToolInput(tag="in_set_default_encodings", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="[:in]       set default external/internal encodings")), ToolInput(tag="in_set_default_encoding", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="set default encoding to UTF-8.")), ToolInput(tag="in_specify_trimmode_", input_type=Float(optional=True), prefix="-T", doc=InputDocumentation(doc="specify trim_mode (0..2, -)")), ToolInput(tag="in_ignore_lines_start", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="ignore lines which start with '%'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Erb_V0_1_0().translate("wdl", allow_empty_container=True)


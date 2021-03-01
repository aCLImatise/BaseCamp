from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Squizz_V0_1_0 = CommandToolBuilder(tool="squizz", base_command=["squizz"], inputs=[ToolInput(tag="in_detect_alignment_formats", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="... Detect alignment formats only.")), ToolInput(tag="in_detect_sequence_formats", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="... Detect sequence formats only.")), ToolInput(tag="in_convert_format_fmt", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="... Convert into format <fmt>.")), ToolInput(tag="in_assume_format_fmt", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="... Assume input format <fmt>.")), ToolInput(tag="in_list_supported_formats", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="... List all supported formats.")), ToolInput(tag="in_count_report_entries", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="... Count and report entries number.")), ToolInput(tag="in_disable_strict_format", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="... Disable strict format checks.")), ToolInput(tag="in_display_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... Display version information and exit.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Squizz_V0_1_0().translate("wdl", allow_empty_container=True)


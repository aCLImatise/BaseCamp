from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Build_Karyotype_Sh_V0_1_0 = CommandToolBuilder(tool="build_karyotype.sh", base_command=["build_karyotype.sh"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is replaced in the same location")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="name for identification")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name for identification")), ToolInput(tag="in_value_display_summary", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="value to display plasmids covered >= in summary image")), ToolInput(tag="in_value_display_individual", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="value to display plasmids covered >= in individual image")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Karyotype_Sh_V0_1_0().translate("wdl")


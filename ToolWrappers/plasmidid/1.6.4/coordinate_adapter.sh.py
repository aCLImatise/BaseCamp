from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Coordinate_Adapter_Sh_V0_1_0 = CommandToolBuilder(tool="coordinate_adapter.sh", base_command=["coordinate_adapter.sh"], inputs=[ToolInput(tag="in_file_bed_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file in bed format")), ToolInput(tag="in_file_coordinates_relationship", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="file with coordinates relationship within bed file ddbb and link reference")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is placed in the same location as input")), ToolInput(tag="in_extend_annotation_default", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="to extend annotation, default 2000")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="name")), ToolInput(tag="in_mode_remove_duplicates", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="mode. Remove duplicates")), ToolInput(tag="in_mode_remove_suffix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="mode. Remove suffix of prokka")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coordinate_Adapter_Sh_V0_1_0().translate("wdl")


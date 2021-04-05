from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File, String

Quality_Trim_Sh_V0_1_0 = CommandToolBuilder(tool="quality_trim.sh", base_command=["quality_trim.sh"], inputs=[ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="file (mandatory)")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="file (mandatory)")), ToolInput(tag="in_where_trimmomatic_installed", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="where trimmomatic is installed, default: /opt/Trimmomatic/")), ToolInput(tag="in_remove_default_truseqpefa", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="to remove, default: TruSeq3-PE.fa")), ToolInput(tag="in_directory_optional", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="name")), ToolInput(tag="in_length_trimmed_reads", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="length of trimmed reads (default 40)")), ToolInput(tag="in_name_mandatory", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="name (mandatory)")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_memmory_gb_default", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="memmory (Gb), default 8")), ToolInput(tag="in__default", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc=", default 1")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quality_Trim_Sh_V0_1_0().translate("wdl")


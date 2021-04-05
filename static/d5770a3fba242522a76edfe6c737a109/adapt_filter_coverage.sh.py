from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Adapt_Filter_Coverage_Sh_V0_1_0 = CommandToolBuilder(tool="adapt_filter_coverage.sh", base_command=["adapt_filter_coverage.sh"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is replaced in the same location")), ToolInput(tag="in_value_filter_values", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="value to filter >= values. If not supplied, all records will be outputted")), ToolInput(tag="in_ad_end_outputted", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="to ad at the end of the outputted file (list of accession numbers)")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adapt_Filter_Coverage_Sh_V0_1_0().translate("wdl")


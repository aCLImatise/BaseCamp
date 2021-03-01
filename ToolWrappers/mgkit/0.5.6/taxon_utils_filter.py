from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Taxon_Utils_Filter_V0_1_0 = CommandToolBuilder(tool="taxon_utils_filter", base_command=["taxon-utils", "filter"], inputs=[ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Taxonomy file  [required]")), ToolInput(tag="in_include_tax_on_id", input_type=Int(optional=True), prefix="--include-taxon-id", doc=InputDocumentation(doc="Include only taxon_ids")), ToolInput(tag="in_include_tax_on_name", input_type=String(optional=True), prefix="--include-taxon-name", doc=InputDocumentation(doc="Include only taxon_names")), ToolInput(tag="in_exclude_tax_on_id", input_type=Int(optional=True), prefix="--exclude-taxon-id", doc=InputDocumentation(doc="Exclude taxon_ids")), ToolInput(tag="in_exclude_tax_on_name", input_type=String(optional=True), prefix="--exclude-taxon-name", doc=InputDocumentation(doc="Exclude taxon_names")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Utils_Filter_V0_1_0().translate("wdl")


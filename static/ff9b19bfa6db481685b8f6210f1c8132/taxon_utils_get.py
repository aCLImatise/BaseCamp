from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Taxon_Utils_Get_V0_1_0 = CommandToolBuilder(tool="taxon_utils_get", base_command=["taxon-utils", "get"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Include header in the output")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="column separator")), ToolInput(tag="in_only_names", input_type=String(optional=True), prefix="--only-names", doc=InputDocumentation(doc="Only get matched taxon names")), ToolInput(tag="in_partial", input_type=Boolean(optional=True), prefix="--partial", doc=InputDocumentation(doc="Use partial matches if any found (implies -o)")), ToolInput(tag="in_include_children", input_type=Boolean(optional=True), prefix="--include-children", doc=InputDocumentation(doc="Include taxa that are children of the requested\n(implies -o)")), ToolInput(tag="in_taxonomy_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Utils_Get_V0_1_0().translate("wdl")


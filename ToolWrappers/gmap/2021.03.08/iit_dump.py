from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Iit_Dump_V0_1_0 = CommandToolBuilder(tool="iit_dump", base_command=["iit_dump"], inputs=[ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="Sort results by coordinates")), ToolInput(tag="in_tags", input_type=Boolean(optional=True), prefix="--tags", doc=InputDocumentation(doc="Show tags present in iit file")), ToolInput(tag="in_counts", input_type=Boolean(optional=True), prefix="--counts", doc=InputDocumentation(doc="Show counts for every boundary in iit file")), ToolInput(tag="in_integrate", input_type=Boolean(optional=True), prefix="--integrate", doc=InputDocumentation(doc="Print intervals as integral output")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Provide debugging information")), ToolInput(tag="in_an_not_only", input_type=Boolean(optional=True), prefix="--annotonly", doc=InputDocumentation(doc="Dump annotation lines only (no headers)")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_i_it_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iit_Dump_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ecitmatch_V0_1_0 = CommandToolBuilder(tool="ecitmatch", base_command=["ecitmatch"], inputs=[ToolInput(tag="in_journal", input_type=Boolean(optional=True), prefix="-journal", doc=InputDocumentation(doc="Journal Title")), ToolInput(tag="in_year", input_type=Boolean(optional=True), prefix="-year", doc=InputDocumentation(doc="Year")), ToolInput(tag="in_volume", input_type=Boolean(optional=True), prefix="-volume", doc=InputDocumentation(doc="Volume")), ToolInput(tag="in_page", input_type=Boolean(optional=True), prefix="-page", doc=InputDocumentation(doc="First Page")), ToolInput(tag="in_author", input_type=Boolean(optional=True), prefix="-author", doc=InputDocumentation(doc="Author Name"))], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ecitmatch_V0_1_0().translate("wdl")


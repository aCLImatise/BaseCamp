from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Geodl_V0_1_0 = CommandToolBuilder(tool="geoDL", base_command=["geoDL"], inputs=[ToolInput(tag="in_meta", input_type=Boolean(optional=True), prefix="--meta", doc=InputDocumentation(doc="Use metadata file instead of fetching it on EBI")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_gse", input_type=String(), position=0, doc=InputDocumentation(doc="GSE accession number, eg: GSE67196")), ToolInput(tag="in_website", input_type=String(), position=0, doc=InputDocumentation(doc="-d, --dry             Don't actually download anything, just print the wget"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geodl_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nf_Core_List_V0_1_0 = CommandToolBuilder(tool="nf_core_list", base_command=["nf-core", "list"], inputs=[ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="[release|pulled|name|stars]\nHow to sort listed pipelines")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="--json", doc=InputDocumentation(doc="Print full output as JSON")), ToolInput(tag="in_show_archived", input_type=Boolean(optional=True), prefix="--show-archived", doc=InputDocumentation(doc="Print archived workflows")), ToolInput(tag="in_filter_keywords", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_List_V0_1_0().translate("wdl")


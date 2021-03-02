from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Taxget_V0_1_0 = CommandToolBuilder(tool="taxget", base_command=["taxget"], inputs=[ToolInput(tag="in_taxons", input_type=Boolean(optional=True), prefix="-taxons", doc=InputDocumentation(doc=": enter taxon value: Error: Unable to get reply from user - end of standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxget_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Obtautomer_V0_1_0 = CommandToolBuilder(tool="obtautomer", base_command=["obtautomer"], inputs=[ToolInput(tag="in_canonical_tautomer_only", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": Canonical tautomer only")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obtautomer_V0_1_0().translate("wdl", allow_empty_container=True)


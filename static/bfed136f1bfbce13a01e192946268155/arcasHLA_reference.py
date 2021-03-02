from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Arcashla_Reference_V0_1_0 = CommandToolBuilder(tool="arcasHLA_reference", base_command=["arcasHLA", "reference"], inputs=[ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="--update", doc=InputDocumentation(doc="update to latest IMGT/HLA version")), ToolInput(tag="in_rebuild", input_type=Boolean(optional=True), prefix="--rebuild", doc=InputDocumentation(doc="rebuild HLA database")), ToolInput(tag="in_commit", input_type=Boolean(optional=True), prefix="--commit", doc=InputDocumentation(doc="checkout IMGT/HLA version using commithash"))], outputs=[], container="quay.io/biocontainers/arcas-hla:0.2.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arcashla_Reference_V0_1_0().translate("wdl")


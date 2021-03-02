from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ktupdatetaxonomy_Sh_V0_1_0 = CommandToolBuilder(tool="ktUpdateTaxonomy.sh", base_command=["ktUpdateTaxonomy.sh"], inputs=[ToolInput(tag="in_only_fetch", input_type=Boolean(optional=True), prefix="--only-fetch", doc=InputDocumentation(doc="Only download source files; do not build.")), ToolInput(tag="in_only_build", input_type=Boolean(optional=True), prefix="--only-build", doc=InputDocumentation(doc="Assume source files exist; do not fetch.")), ToolInput(tag="in_preserve", input_type=Boolean(optional=True), prefix="--preserve", doc=InputDocumentation(doc="Do not remove source files after build."))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktupdatetaxonomy_Sh_V0_1_0().translate("wdl")


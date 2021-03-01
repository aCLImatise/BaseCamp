from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Accessiontotaxid_V0_1_0 = CommandToolBuilder(tool="AccessionToTaxId", base_command=["AccessionToTaxId"], inputs=[ToolInput(tag="in_accession", input_type=Int(optional=True), prefix="--accession", doc=InputDocumentation(doc="NCBI accession number, e.g NC_000913")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Loud verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet verbosity"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Accessiontotaxid_V0_1_0().translate("wdl", allow_empty_container=True)


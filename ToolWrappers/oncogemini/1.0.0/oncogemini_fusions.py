from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Oncogemini_Fusions_V0_1_0 = CommandToolBuilder(tool="oncogemini_fusions", base_command=["oncogemini", "fusions"], inputs=[ToolInput(tag="in_in_cosmic_census", input_type=Boolean(optional=True), prefix="--in_cosmic_census", doc=InputDocumentation(doc="One or both genes in fusion is in COSMIC cancer census")), ToolInput(tag="in_min_qual", input_type=Float(optional=True), prefix="--min_qual", doc=InputDocumentation(doc="The min variant quality (VCF QUAL) (def: None).")), ToolInput(tag="in_evidence_type", input_type=String(optional=True), prefix="--evidence_type", doc=InputDocumentation(doc="The supporting evidence types for the variant ('PE',\n'SR', or 'PE,SR').\n"))], outputs=[], container="quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Fusions_V0_1_0().translate("wdl")


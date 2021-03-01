from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tm_V0_1_0 = CommandToolBuilder(tool="Tm", base_command=["Tm"], inputs=[ToolInput(tag="in_uncorrected", input_type=Boolean(optional=True), prefix="--uncorrected", doc=InputDocumentation(doc="Do not use monovalent/divalent cation corrections")), ToolInput(tag="in_dna", input_type=String(optional=True), prefix="--dna", doc=InputDocumentation(doc="DNA concentration (nM)")), ToolInput(tag="in_na", input_type=String(optional=True), prefix="--na", doc=InputDocumentation(doc="Na+ concentration (mM)")), ToolInput(tag="in_mg", input_type=String(optional=True), prefix="--mg", doc=InputDocumentation(doc="Mg++ concentration (mM)")), ToolInput(tag="in_dntp", input_type=String(optional=True), prefix="--dntp", doc=InputDocumentation(doc="Nucleotide triphosphate concentration (mM)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tm_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Inforesidue_V0_1_0 = CommandToolBuilder(tool="inforesidue", base_command=["inforesidue"], inputs=[ToolInput(tag="in_aa_data", input_type=Boolean(optional=True), prefix="-aadata", doc=InputDocumentation(doc="datafile   [Eamino.dat] Amino acid properties")), ToolInput(tag="in_mw_data", input_type=Boolean(optional=True), prefix="-mwdata", doc=InputDocumentation(doc="datafile   [Emolwt.dat] Molecular weight data for amino")), ToolInput(tag="in_acids", input_type=String(), position=0, doc=InputDocumentation(doc="General qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Inforesidue_V0_1_0().translate("wdl", allow_empty_container=True)


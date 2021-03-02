from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Pepstats_V0_1_0 = CommandToolBuilder(tool="_pepstats", base_command=["_pepstats"], inputs=[ToolInput(tag="in_aa_data", input_type=Boolean(optional=True), prefix="-aadata", doc=InputDocumentation(doc="datafile   [Eamino.dat] Amino acid properties")), ToolInput(tag="in_mw_data", input_type=Boolean(optional=True), prefix="-mwdata", doc=InputDocumentation(doc="datafile   [Emolwt.dat] Molecular weight data for amino")), ToolInput(tag="in_mono", input_type=Boolean(optional=True), prefix="-mono", doc=InputDocumentation(doc="boolean    [N] Use monoisotopic weights")), ToolInput(tag="in_acids", input_type=String(), position=0, doc=InputDocumentation(doc="-pkdata             datafile   [Epk.dat] Values of pKa for amino acids"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pepstats_V0_1_0().translate("wdl", allow_empty_container=True)


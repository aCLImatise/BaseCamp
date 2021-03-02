from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pepdigest_V0_1_0 = CommandToolBuilder(tool="pepdigest", base_command=["pepdigest"], inputs=[ToolInput(tag="in_menu", input_type=Boolean(optional=True), prefix="-menu", doc=InputDocumentation(doc="menu       [1] Select number (Values: 1 (Trypsin); 2\n(Lys-C); 3 (Arg-C); 4 (Asp-N); 5\n(V8-bicarb); 6 (V8-phosph); 7\n(Chymotrypsin); 8 (CNBr))")), ToolInput(tag="in_mono", input_type=Boolean(optional=True), prefix="-mono", doc=InputDocumentation(doc="boolean    [N] Use monoisotopic weights")), ToolInput(tag="in_mw_data", input_type=Boolean(optional=True), prefix="-mwdata", doc=InputDocumentation(doc="datafile   [Emolwt.dat] Molecular weight data for amino")), ToolInput(tag="in_ragging", input_type=Boolean(optional=True), prefix="-ragging", doc=InputDocumentation(doc="boolean    Allows semi-specific and non-specific\ndigestion. This option is particularly\nuseful for generating lists of peptide\nsequences for protein identification using\nmass-spectrometry.")), ToolInput(tag="in_termini", input_type=Boolean(optional=True), prefix="-termini", doc=InputDocumentation(doc="menu       [1] Select number (Values: 1 (none); 2\n(nterm); 3 (cterm); 4 (nterm OR cterm))")), ToolInput(tag="in_overlap", input_type=Boolean(optional=True), prefix="-overlap", doc=InputDocumentation(doc="boolean    Used for partial digestion. Shows all cuts\nfrom favoured cut sites plus 1..3, 2..4,\n3..5 etc but not (e.g.) 2..5. Overlaps are\ntherefore fragments with exactly one\npotential cut site within it.")), ToolInput(tag="in_all_partials", input_type=Boolean(optional=True), prefix="-allpartials", doc=InputDocumentation(doc="boolean    As for overlap but fragments containing more\nthan one potential cut site are included.")), ToolInput(tag="in_acids", input_type=String(), position=0, doc=InputDocumentation(doc="-unfavoured         boolean    Trypsin will not normally cut after 'KR' if"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepdigest_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

_Fprotdist_V0_1_0 = CommandToolBuilder(tool="_fprotdist", base_command=["_fprotdist"], inputs=[ToolInput(tag="in_n_categories", input_type=Boolean(optional=True), prefix="-ncategories", doc=InputDocumentation(doc="integer    [1] Number of substitution rate categories\n(Integer from 1 to 9)")), ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [j] Choose the method to use (Values: j\n(Jones-Taylor-Thornton matrix); h\n(Henikoff/Tiller PMB matrix); d (Dayhoff PAM\nmatrix); k (Kimura formula); s (Similarity\ntable); c (Categories model))")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_alignments", input_type=String(), position=0, doc=InputDocumentation(doc="[-outfile]           outfile    [*.fprotdist] Phylip distance matrix output")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fprotdist_V0_1_0().translate("wdl", allow_empty_container=True)


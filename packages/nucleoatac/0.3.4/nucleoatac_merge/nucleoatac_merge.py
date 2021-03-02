from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Nucleoatac_Merge_V0_1_0 = CommandToolBuilder(tool="nucleoatac_merge", base_command=["nucleoatac", "merge"], inputs=[ToolInput(tag="in_occ_peaks", input_type=File(optional=True), prefix="--occpeaks", doc=InputDocumentation(doc="Output from occ utility")), ToolInput(tag="in_nuc_pos", input_type=File(optional=True), prefix="--nucpos", doc=InputDocumentation(doc="Output from nuc utility")), ToolInput(tag="in_sep", input_type=Int(optional=True), prefix="--sep", doc=InputDocumentation(doc="minimum separation between call")), ToolInput(tag="in_min_occ", input_type=Int(optional=True), prefix="--min_occ", doc=InputDocumentation(doc="minimum lower bound occupancy of nucleosomes to be\nconsidered for excluding NFR. default is 0.1\n")), ToolInput(tag="in_optional", input_type=String(), position=0, doc=InputDocumentation(doc="--out out_basename    output file basename"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleoatac_Merge_V0_1_0().translate("wdl", allow_empty_container=True)


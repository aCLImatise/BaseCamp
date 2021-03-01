from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Slivar_Duo_Del_V0_1_0 = CommandToolBuilder(tool="slivar_duo_del", base_command=["slivar", "duo-del"], inputs=[ToolInput(tag="in_ped", input_type=File(optional=True), prefix="--ped", doc=InputDocumentation(doc="required ped file describing the duos in the VCF")), ToolInput(tag="in_g_notate", input_type=File(optional=True), prefix="--gnotate", doc=InputDocumentation(doc="optional gnotate file to check for flagged variants to exclude")), ToolInput(tag="in_min_sites", input_type=Int(optional=True), prefix="--min-sites", doc=InputDocumentation(doc="minimum number of variants required to define a region (use 1 to output all putative deletions) (default: 3)")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="minimum size in base-pairs of a region (default: 50)")), ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="path to BED file of exclude regions e.g. (LCRs or self-chains)")), ToolInput(tag="in_affected_only", input_type=Boolean(optional=True), prefix="--affected-only", doc=InputDocumentation(doc="only output DEL calls for affected kids")), ToolInput(tag="in_sli_var", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_duo_del", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slivar_Duo_Del_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ibs_V0_1_0 = CommandToolBuilder(tool="ibs", base_command=["ibs"], inputs=[ToolInput(tag="in_glf", input_type=Boolean(optional=True), prefix="-glf", doc=InputDocumentation(doc="input GLF filename:")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="-outFileName", doc=InputDocumentation(doc="filename(prefix):")), ToolInput(tag="in_n_ind", input_type=Boolean(optional=True), prefix="-nInd", doc=InputDocumentation(doc="nubmer of individuals in GLF file:")), ToolInput(tag="in_in_done", input_type=Boolean(optional=True), prefix="-ind1", doc=InputDocumentation(doc="/i1        individuals 1:")), ToolInput(tag="in_ind_two", input_type=Boolean(optional=True), prefix="-ind2", doc=InputDocumentation(doc="/i2        individuals 2:")), ToolInput(tag="in_all_pairs", input_type=Boolean(optional=True), prefix="-allpairs", doc=InputDocumentation(doc="analyse all pairs:")), ToolInput(tag="in_max_sites", input_type=Boolean(optional=True), prefix="-maxSites", doc=InputDocumentation(doc="maximum sites to analyze:")), ToolInput(tag="in_model", input_type=Boolean(optional=True), prefix="-model", doc=InputDocumentation(doc="ibs model\nsingle:        0 all 10 genotypes, 1 HO/HE\npair:          0 all 10 genotypes, 1 HO/HE, 2 ABCD")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="ibs -seed 0 use seed for random start"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ibs_V0_1_0().translate("wdl", allow_empty_container=True)


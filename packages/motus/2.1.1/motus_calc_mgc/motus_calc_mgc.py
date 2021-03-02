from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Motus_Calc_Mgc_V0_1_0 = CommandToolBuilder(tool="motus_calc_mgc", base_command=["motus", "calc_mgc"], inputs=[ToolInput(tag="in_profile", input_type=String(), position=0, doc=InputDocumentation(doc="Perform a taxonomic profiling (map_tax + calc_mgc + calc_motu)")), ToolInput(tag="in_merge", input_type=String(), position=1, doc=InputDocumentation(doc="Merge different taxonomic profiles to create a table")), ToolInput(tag="in_map_tax", input_type=String(), position=2, doc=InputDocumentation(doc="Map reads to the marker gene database")), ToolInput(tag="in_calc_mgc", input_type=String(), position=3, doc=InputDocumentation(doc="Aggregate reads from the same marker gene cluster (mgc)")), ToolInput(tag="in_calc_motu", input_type=String(), position=4, doc=InputDocumentation(doc="From a mgc abundance table, produce the mOTU abundance table")), ToolInput(tag="in_map_snv", input_type=String(), position=0, doc=InputDocumentation(doc="Map reads to create bam/sam file for snv calling")), ToolInput(tag="in_snv_call", input_type=String(), position=1, doc=InputDocumentation(doc="SNV calling using metaSNV"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motus_Calc_Mgc_V0_1_0().translate("wdl", allow_empty_container=True)


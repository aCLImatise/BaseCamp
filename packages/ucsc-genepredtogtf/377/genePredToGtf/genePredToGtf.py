from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genepredtogtf_V0_1_0 = CommandToolBuilder(tool="genePredToGtf", base_command=["genePredToGtf"], inputs=[ToolInput(tag="in_utr", input_type=Boolean(optional=True), prefix="-utr", doc=InputDocumentation(doc="- Add 5UTR and 3UTR features")), ToolInput(tag="in_honor_cds_stat", input_type=Boolean(optional=True), prefix="-honorCdsStat", doc=InputDocumentation(doc="- use cdsStartStat/cdsEndStat when defining start/end\ncodon records")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="-source", doc=InputDocumentation(doc="set source name to use")), ToolInput(tag="in_add_comments", input_type=Boolean(optional=True), prefix="-addComments", doc=InputDocumentation(doc="- Add comments before each set of transcript records.\nallows for easier visual inspection")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_pred_table", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genepredtogtf_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Genepredfilter_V0_1_0 = CommandToolBuilder(tool="genePredFilter", base_command=["genePredFilter"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="-db", doc=InputDocumentation(doc="- If specified, then this database is used to\nget chromosome sizes.")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- level >= 2 prints out errors for each problem found.")), ToolInput(tag="in_gene_pred_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genepredfilter_V0_1_0().translate("wdl", allow_empty_container=True)


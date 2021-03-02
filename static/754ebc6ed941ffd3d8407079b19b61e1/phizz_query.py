from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Phizz_Query_V0_1_0 = CommandToolBuilder(tool="phizz_query", base_command=["phizz", "query"], inputs=[ToolInput(tag="in_hpo_term", input_type=File(optional=True), prefix="--hpo_term", doc=InputDocumentation(doc="Specify a hpo term")), ToolInput(tag="in_mim_term", input_type=String(optional=True), prefix="--mim_term", doc=InputDocumentation(doc="Specify a omim id")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Specify path to outfile")), ToolInput(tag="in_to_json", input_type=Boolean(optional=True), prefix="--to_json", doc=InputDocumentation(doc="If output should be in json format")), ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc="The chromosome"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phizz_Query_V0_1_0().translate("wdl", allow_empty_container=True)


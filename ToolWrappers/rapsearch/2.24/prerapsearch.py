from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Prerapsearch_V0_1_0 = CommandToolBuilder(tool="prerapsearch", base_command=["prerapsearch"], inputs=[ToolInput(tag="in_splits_database_specified", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="(splits the database into specified number of files)")), ToolInput(tag="in_output_full_headers", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="/t (output the full fasta headers of subjects to faicilitate anonotation)")), ToolInput(tag="in_n", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prerapsearch_V0_1_0().translate("wdl", allow_empty_container=True)


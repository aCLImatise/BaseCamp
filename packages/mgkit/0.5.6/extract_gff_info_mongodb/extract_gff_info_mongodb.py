from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Extract_Gff_Info_Mongodb_V0_1_0 = CommandToolBuilder(tool="extract_gff_info_mongodb", base_command=["extract-gff-info", "mongodb"], inputs=[ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Taxonomy used to populate the lineage")), ToolInput(tag="in_no_cache", input_type=Boolean(optional=True), prefix="--no-cache", doc=InputDocumentation(doc="No cache for the lineage function")), ToolInput(tag="in_indent", input_type=Int(optional=True), prefix="--indent", doc=InputDocumentation(doc="If used, the json will be written in a human\nreadble form")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Gff_Info_Mongodb_V0_1_0().translate("wdl")


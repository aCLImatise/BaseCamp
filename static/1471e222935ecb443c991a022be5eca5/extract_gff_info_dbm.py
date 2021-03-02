from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Extract_Gff_Info_Dbm_V0_1_0 = CommandToolBuilder(tool="extract_gff_info_dbm", base_command=["extract-gff-info", "dbm"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory for the database  [default: gff-dbm]")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Gff_Info_Dbm_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Staramr_Db_Update_V0_1_0 = CommandToolBuilder(tool="staramr_db_update", base_command=["staramr", "db", "update"], inputs=[ToolInput(tag="in_update_default", input_type=Boolean(optional=True), prefix="--update-default", doc=InputDocumentation(doc="Updates default database directory (/usr/local/lib/python3.7/site-packages/staramr/databases/data).")), ToolInput(tag="in_res_finder_commit", input_type=String(optional=True), prefix="--resfinder-commit", doc=InputDocumentation(doc="The specific git commit for the resfinder database [latest].")), ToolInput(tag="in_point_finder_commit", input_type=String(optional=True), prefix="--pointfinder-commit", doc=InputDocumentation(doc="The specific git commit for the pointfinder database [latest].")), ToolInput(tag="in_plasmid_finder_commit", input_type=String(optional=True), prefix="--plasmidfinder-commit", doc=InputDocumentation(doc="The specific git commit for the plasmidfinder database [latest].")), ToolInput(tag="in_directories", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/staramr:0.7.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Staramr_Db_Update_V0_1_0().translate("wdl")


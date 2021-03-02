from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Sparse_Predict_V0_1_0 = CommandToolBuilder(tool="sparse_predict", base_command=["sparse", "predict"], inputs=[ToolInput(tag="in_dbname", input_type=Directory(optional=True), prefix="--dbname", doc=InputDocumentation(doc="Name for the database folder. REQUIRED")), ToolInput(tag="in_map_db", input_type=String(optional=True), prefix="--mapDB", doc=InputDocumentation(doc="Comma delimited names for sub-databases. REQUIRED.\nDefault: representative,subpopulation,Virus")), ToolInput(tag="in_workspace", input_type=Directory(optional=True), prefix="--workspace", doc=InputDocumentation(doc="Folder name for all outputs and intermediate results. REQUIRED.")), ToolInput(tag="in_r_one", input_type=Int(optional=True), prefix="--r1", doc=InputDocumentation(doc="SE read or first part of PE reads. REQUIRED.")), ToolInput(tag="in_r_two", input_type=Int(optional=True), prefix="--r2", doc=InputDocumentation(doc="Second part of PE reads.")), ToolInput(tag="in_n_thread", input_type=Int(optional=True), prefix="--n_thread", doc=InputDocumentation(doc="Number of threads to use. Default: 20\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparse_Predict_V0_1_0().translate("wdl", allow_empty_container=True)


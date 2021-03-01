from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hca_Matrix_Downloader_V0_1_0 = CommandToolBuilder(tool="hca_matrix_downloader", base_command=["hca-matrix-downloader"], inputs=[ToolInput(tag="in_project", input_type=String(optional=True), prefix="--project", doc=InputDocumentation(doc="The project's Project Title, Project Label or link-\nderived ID, obtained from the HCA DCP, wrapped in\nquotes.")), ToolInput(tag="in_query", input_type=Int(optional=True), prefix="--query", doc=InputDocumentation(doc="A complete /v1/matrix/ POST query in JSON format.\nConsult https://matrix.dev.data.humancellatlas.org/\nfor details.")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Format to download matrix in: loom, csv or mtx (Matrix\nMarket). Defaults to loom.")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--outprefix", doc=InputDocumentation(doc="Output prefix for downloaded matrix. Leave default\nname (the Matrix API request ID) if not specified.\n")), ToolInput(tag="in_download", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_via", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_hca", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Matrix_Downloader_V0_1_0().translate("wdl", allow_empty_container=True)


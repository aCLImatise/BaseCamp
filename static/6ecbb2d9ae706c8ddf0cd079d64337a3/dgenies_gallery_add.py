from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Dgenies_Gallery_Add_V0_1_0 = CommandToolBuilder(tool="dgenies_gallery_add", base_command=["dgenies", "gallery", "add"], inputs=[ToolInput(tag="in_id_job", input_type=String(optional=True), prefix="--id-job", doc=InputDocumentation(doc="Id (name) of the job to add to the gallery")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name to show in the gallery for the job")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="Name of the query")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Name of the target")), ToolInput(tag="in_pict", input_type=File(optional=True), prefix="--pict", doc=InputDocumentation(doc="Name of the file that illustrate the job"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dgenies_Gallery_Add_V0_1_0().translate("wdl", allow_empty_container=True)


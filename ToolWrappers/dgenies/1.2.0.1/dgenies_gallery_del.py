from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Dgenies_Gallery_Del_V0_1_0 = CommandToolBuilder(tool="dgenies_gallery_del", base_command=["dgenies", "gallery", "del"], inputs=[ToolInput(tag="in_id_job", input_type=String(optional=True), prefix="--id-job", doc=InputDocumentation(doc="Id (name) of the job to delete from the gallery")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of the job shown in the gallery")), ToolInput(tag="in_remove_pict", input_type=Boolean(optional=True), prefix="--remove-pict", doc=InputDocumentation(doc="Remove picture file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dgenies_Gallery_Del_V0_1_0().translate("wdl", allow_empty_container=True)


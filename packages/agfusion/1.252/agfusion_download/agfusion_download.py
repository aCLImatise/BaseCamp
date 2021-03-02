from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Boolean

Agfusion_Download_V0_1_0 = CommandToolBuilder(tool="agfusion_download", base_command=["agfusion", "download"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="(Optional) Directory to the database will be\ndownloaded to (defaults to current working directory).")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Specify the genome shortcut (e.g. hg19). To see\nallavailable shortcuts run 'agfusion download -a'.\nEither specify this or --species and --release.")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="The species (e.g. homo_sapiens).")), ToolInput(tag="in_release", input_type=Int(optional=True), prefix="--release", doc=InputDocumentation(doc="The ensembl release (e.g. 87).")), ToolInput(tag="in_available", input_type=Boolean(optional=True), prefix="--available", doc=InputDocumentation(doc="List available species and ensembl releases."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agfusion_Download_V0_1_0().translate("wdl", allow_empty_container=True)


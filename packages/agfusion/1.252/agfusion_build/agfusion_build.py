from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Agfusion_Build_V0_1_0 = CommandToolBuilder(tool="agfusion_build", base_command=["agfusion", "build"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Directory to write database file to.")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="The species (e.g. homo_sapiens).")), ToolInput(tag="in_release", input_type=Int(optional=True), prefix="--release", doc=InputDocumentation(doc="The ensembl release (e.g. 87).")), ToolInput(tag="in_pfam", input_type=File(optional=True), prefix="--pfam", doc=InputDocumentation(doc="File containing PFAM ID mappings.")), ToolInput(tag="in_server", input_type=String(optional=True), prefix="--server", doc=InputDocumentation(doc="(optional) Ensembl server (default\nensembldb.ensembl.org)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agfusion_Build_V0_1_0().translate("wdl", allow_empty_container=True)


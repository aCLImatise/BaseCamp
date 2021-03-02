from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Refgenie_Seek_V0_1_0 = CommandToolBuilder(tool="refgenie_seek", base_command=["refgenie", "seek"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_check_exists", input_type=Boolean(optional=True), prefix="--check-exists", doc=InputDocumentation(doc="Whether the returned asset path should be checked for\nexistence on disk.\n")), ToolInput(tag="in_asset_registry_paths", input_type=String(), position=0, doc=InputDocumentation(doc="One or more registry path strings that identify assets\n(e.g. hg38/fasta or hg38/fasta:tag or\nhg38/fasta.fai:tag)."))], outputs=[], container="quay.io/biocontainers/refgenie:0.9.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Seek_V0_1_0().translate("wdl")


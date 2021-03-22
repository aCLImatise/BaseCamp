from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Refgenie_Remove_V0_1_0 = CommandToolBuilder(tool="refgenie_remove", base_command=["refgenie", "remove"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if REFGENIE\nenvironment variable is set.")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="Whether the config file should not be locked for reading")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Do not prompt before action, approve upfront.")), ToolInput(tag="in_aliases", input_type=Boolean(optional=True), prefix="--aliases", doc=InputDocumentation(doc="Remove the genome alias if last asset for that genome is\nremoved.\n")), ToolInput(tag="in_asset_registry_paths", input_type=String(), position=0, doc=InputDocumentation(doc="One or more registry path strings that identify assets (e.g.\nhg38/fasta or hg38/fasta:tag)."))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Remove_V0_1_0().translate("wdl")


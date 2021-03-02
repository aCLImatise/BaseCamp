from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Refgenie_Unsubscribe_V0_1_0 = CommandToolBuilder(tool="refgenie_unsubscribe", base_command=["refgenie", "unsubscribe"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_genome_server", input_type=Array(t=String(), optional=True), prefix="--genome-server", doc=InputDocumentation(doc="One or more URLs to remove from the genome_servers\nattribute in config file.\n"))], outputs=[], container="quay.io/biocontainers/refgenie:0.9.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Unsubscribe_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Integron_Split_V0_1_0 = CommandToolBuilder(tool="integron_split", base_command=["integron_split"], inputs=[ToolInput(tag="in_chunk", input_type=Int(optional=True), prefix="--chunk", doc=InputDocumentation(doc="The number of files generate. Each chunks will\ncontains n replicon where n = number of replicon in\nthe input file / chunk.The n may vary in some chunks\nbecause some replicon can be skip if they contains\nillegal characters or are too short (<50bp)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="The path to the directory where to write the chunks.\nIt must exists.")), ToolInput(tag="in_mute", input_type=Boolean(optional=True), prefix="--mute", doc=InputDocumentation(doc="mute the log on stdout.(continue to log on\nintegron_split.out)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity of output (can be cumulative : -vv)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Decrease verbosity of output (can be cumulative : -qq)"))], outputs=[], container="quay.io/biocontainers/integron_finder:2.0rc6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Integron_Split_V0_1_0().translate("wdl")


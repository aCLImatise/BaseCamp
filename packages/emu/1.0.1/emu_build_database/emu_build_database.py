from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Emu_Build_Database_V0_1_0 = CommandToolBuilder(tool="emu_build_database", base_command=["emu", "build-database"], inputs=[ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="path to names.dmp file")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="path to nodes.dmp file")), ToolInput(tag="in_sequences", input_type=File(optional=True), prefix="--sequences", doc=InputDocumentation(doc="path to fasta of database sequences")), ToolInput(tag="in_seq_two_tax", input_type=Int(optional=True), prefix="--seq2tax", doc=InputDocumentation(doc="path to tsv mapping species tax id to fasta sequence\nheaders\n"))], outputs=[], container="quay.io/biocontainers/emu:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emu_Build_Database_V0_1_0().translate("wdl")


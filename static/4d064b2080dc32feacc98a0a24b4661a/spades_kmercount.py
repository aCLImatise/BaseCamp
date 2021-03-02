from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory

Spades_Kmercount_V0_1_0 = CommandToolBuilder(tool="spades_kmercount", base_command=["spades-kmercount"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="K-mer length")), ToolInput(tag="in_dataset", input_type=String(optional=True), prefix="--dataset", doc=InputDocumentation(doc="Dataset description (in YAML), input files ignored")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use")), ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory to use")), ToolInput(tag="in_bufsize", input_type=Int(optional=True), prefix="--bufsize", doc=InputDocumentation(doc="Sorting buffer size, per thread"))], outputs=[], container="quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Kmercount_V0_1_0().translate("wdl")


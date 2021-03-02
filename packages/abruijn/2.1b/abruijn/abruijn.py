from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Abruijn_V0_1_0 = CommandToolBuilder(tool="abruijn", base_command=["abruijn"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="enable debug output")), ToolInput(tag="in_resume", input_type=Boolean(optional=True), prefix="--resume", doc=InputDocumentation(doc="try to resume previous assembly")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of parallel threads (default: 1)")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="number of polishing iterations (default: 1)")), ToolInput(tag="in_platform", input_type=String(optional=True), prefix="--platform", doc=InputDocumentation(doc="sequencing platform (default: pacbio)")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="kmer size (default: auto)")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="minimum overlap between reads (default: 5000)")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="minimum kmer coverage (default: auto)")), ToolInput(tag="in_max_coverage", input_type=Int(optional=True), prefix="--max-coverage", doc=InputDocumentation(doc="maximum kmer coverage (default: auto)")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="path to reads file (FASTA format)")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc="output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abruijn_V0_1_0().translate("wdl", allow_empty_container=True)


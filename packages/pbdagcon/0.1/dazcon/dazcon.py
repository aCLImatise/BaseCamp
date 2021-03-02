from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Dazcon_V0_1_0 = CommandToolBuilder(tool="dazcon", base_command=["dazcon"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turns on verbose logging")), ToolInput(tag="in_only_proper_overlaps", input_type=Boolean(optional=True), prefix="--only-proper-overlaps", doc=InputDocumentation(doc="Use only 'proper overlaps', i.e., align to the ends")), ToolInput(tag="in_coverage_sort", input_type=Boolean(optional=True), prefix="--coverage-sort", doc=InputDocumentation(doc="Sort hits by coverage")), ToolInput(tag="in_max_hit", input_type=Int(optional=True), prefix="--max-hit", doc=InputDocumentation(doc="Maximum number of hits to pass to consensus")), ToolInput(tag="in_seq_file", input_type=File(optional=True), prefix="--seq-file", doc=InputDocumentation(doc="(required)  Path to the sequences file")), ToolInput(tag="in_align_file", input_type=File(optional=True), prefix="--align-file", doc=InputDocumentation(doc="(required)  Path to the alignments file")), ToolInput(tag="in_trim", input_type=Int(optional=True), prefix="--trim", doc=InputDocumentation(doc="Trim alignments on either size")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum length for correction")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum coverage for correction")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of consensus threads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dazcon_V0_1_0().translate("wdl", allow_empty_container=True)


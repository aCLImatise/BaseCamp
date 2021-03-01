from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float

Racon_V0_1_0 = CommandToolBuilder(tool="racon", base_command=["racon"], inputs=[ToolInput(tag="in_include_unpolished", input_type=Boolean(optional=True), prefix="--include-unpolished", doc=InputDocumentation(doc="output unpolished target sequences")), ToolInput(tag="in_fragment_correction", input_type=Boolean(optional=True), prefix="--fragment-correction", doc=InputDocumentation(doc="perform fragment correction instead of contig polishing\n(overlaps file should contain dual/self overlaps!)")), ToolInput(tag="in_window_length", input_type=Int(optional=True), prefix="--window-length", doc=InputDocumentation(doc="default: 500\nsize of window on which POA is performed")), ToolInput(tag="in_quality_threshold", input_type=Float(optional=True), prefix="--quality-threshold", doc=InputDocumentation(doc="default: 10.0\nthreshold for average base quality of windows used in POA")), ToolInput(tag="in_error_threshold", input_type=Float(optional=True), prefix="--error-threshold", doc=InputDocumentation(doc="default: 0.3\nmaximum allowed error rate used for filtering overlaps")), ToolInput(tag="in_no_trimming", input_type=Boolean(optional=True), prefix="--no-trimming", doc=InputDocumentation(doc="disables consensus trimming at window ends")), ToolInput(tag="in_match", input_type=Int(optional=True), prefix="--match", doc=InputDocumentation(doc="default: 3\nscore for matching bases")), ToolInput(tag="in_mismatch", input_type=Int(optional=True), prefix="--mismatch", doc=InputDocumentation(doc="default: -5\nscore for mismatching bases")), ToolInput(tag="in_gap", input_type=Int(optional=True), prefix="--gap", doc=InputDocumentation(doc="default: -4\ngap penalty (must be negative)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="default: 1\nnumber of threads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Racon_V0_1_0().translate("wdl", allow_empty_container=True)


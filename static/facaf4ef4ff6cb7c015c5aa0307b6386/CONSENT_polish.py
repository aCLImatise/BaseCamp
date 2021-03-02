from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Consent_Polish_V0_1_0 = CommandToolBuilder(tool="CONSENT_polish", base_command=["CONSENT-polish"], inputs=[ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--windowSize", doc=InputDocumentation(doc=":      Size of the windows to process. (default: 500)")), ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--minSupport", doc=InputDocumentation(doc=":      Minimum support to consider a window for correction. (default: 1)")), ToolInput(tag="in_max_support", input_type=Int(optional=True), prefix="--maxSupport", doc=InputDocumentation(doc=":      Maximum number of overlaps to include in a pile. (default: 20,000)")), ToolInput(tag="in_mer_size", input_type=Int(optional=True), prefix="--merSize", doc=InputDocumentation(doc=":         k-mer size for chaining and polishing. (default: 9)")), ToolInput(tag="in_solid", input_type=Int(optional=True), prefix="--solid", doc=InputDocumentation(doc=":           Minimum number of occurrences to consider a k-mer as solid during polishing. (default: 4)")), ToolInput(tag="in_anchor_support", input_type=Int(optional=True), prefix="--anchorSupport", doc=InputDocumentation(doc=":   Minimum number of sequences supporting (Ai) - (Ai+1) to keep the two anchors in the chaining. (default: 8)")), ToolInput(tag="in_min_anchors", input_type=Int(optional=True), prefix="--minAnchors", doc=InputDocumentation(doc=":      Minimum number of anchors in a window to allow consensus computation. (default: 10)")), ToolInput(tag="in_window_overlap", input_type=Int(optional=True), prefix="--windowOverlap", doc=InputDocumentation(doc=":   Overlap size between consecutive windows. (default: 50)")), ToolInput(tag="in_nproc", input_type=Int(optional=True), prefix="--nproc", doc=InputDocumentation(doc=":           Number of processes to run in parallel (default: number of cores).")), ToolInput(tag="in_minimap_index", input_type=Int(optional=True), prefix="--minimapIndex", doc=InputDocumentation(doc=":    Split minimap2 index every INT input bases (default: 500M).")), ToolInput(tag="in_tmpdir", input_type=File(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc=":    Path where to store the temporary files (default: working directory)."))], outputs=[], container="quay.io/biocontainers/consent:2.2.2--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consent_Polish_V0_1_0().translate("wdl")


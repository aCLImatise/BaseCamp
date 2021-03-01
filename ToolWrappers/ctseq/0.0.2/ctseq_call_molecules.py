from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, String

Ctseq_Call_Molecules_V0_1_0 = CommandToolBuilder(tool="ctseq_call_molecules", base_command=["ctseq", "call_molecules"], inputs=[ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--refDir", doc=InputDocumentation(doc="Full path to directory where you have already built\nyour methylation reference files. If no '--refDir' is\nspecified, ctseq will look in your current directory.")), ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Full path to directory where your .sam files are\nlocated. If no '--dir' is specified, ctseq will look\nin your current directory.")), ToolInput(tag="in_consensus", input_type=Float(optional=True), prefix="--consensus", doc=InputDocumentation(doc="consensus threshold to make consensus methylation call\nfrom all the reads with the same UMI (default=0.9)")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="number of processes (default=1; default settings could\ntake a long time to run)")), ToolInput(tag="in_umi_threshold", input_type=Int(optional=True), prefix="--umiThreshold", doc=InputDocumentation(doc="UMIs with this edit distance will be collapsed\ntogether, default=0 (don't collapse)")), ToolInput(tag="in_umi_collapse_alg", input_type=String(optional=True), prefix="--umiCollapseAlg", doc=InputDocumentation(doc="algorithm used to collapse UMIs, options:\ndefault=directional\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctseq_Call_Molecules_V0_1_0().translate("wdl", allow_empty_container=True)


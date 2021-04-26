from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, Boolean

Last_Split5_V0_1_0 = CommandToolBuilder(tool="last_split5", base_command=["last-split5"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="output format: MAF, MAF+ (default: depends on input)")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="--genome", doc=InputDocumentation(doc="lastdb genome name")), ToolInput(tag="in_direction", input_type=Int(optional=True), prefix="--direction", doc=InputDocumentation(doc="RNA direction: 0=reverse, 1=forward, 2=mixed (default=1)")), ToolInput(tag="in_cis", input_type=Float(optional=True), prefix="--cis", doc=InputDocumentation(doc="cis-splice probability per base (default=0.004)")), ToolInput(tag="in_trans", input_type=Float(optional=True), prefix="--trans", doc=InputDocumentation(doc="trans-splice probability per base (default=1e-05)")), ToolInput(tag="in_mean", input_type=Int(optional=True), prefix="--mean", doc=InputDocumentation(doc="mean of ln[intron length] (default=7)")), ToolInput(tag="in_sdev", input_type=Int(optional=True), prefix="--sdev", doc=InputDocumentation(doc="standard deviation of ln[intron length] (default=1.7)")), ToolInput(tag="in_mis_map", input_type=Int(optional=True), prefix="--mismap", doc=InputDocumentation(doc="maximum mismap probability (default=1)")), ToolInput(tag="in_score", input_type=Int(optional=True), prefix="--score", doc=InputDocumentation(doc="minimum alignment score (default=e OR e+t*ln[100])")), ToolInput(tag="in_no_split", input_type=Boolean(optional=True), prefix="--no-split", doc=InputDocumentation(doc="write original, not split, alignments")), ToolInput(tag="in_bytes", input_type=Int(optional=True), prefix="--bytes", doc=InputDocumentation(doc="maximum memory (default=8T for split, 8G for spliced)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="be verbose")), ToolInput(tag="in_last_alignments_dot_maf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1219--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Last_Split5_V0_1_0().translate("wdl")


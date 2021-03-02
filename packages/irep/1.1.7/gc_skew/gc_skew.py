from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Gc_Skew_V0_1_0 = CommandToolBuilder(tool="gc_skew", base_command=["gc_skew"], inputs=[ToolInput(tag="in__fastas", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[F [F ...]]  fasta(s)")), ToolInput(tag="in_minimum_contig_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum contig length (default = 10 x window)")), ToolInput(tag="in_window_length_default", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="window length (default = 1000)")), ToolInput(tag="in_slide_length_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="slide length (default = 10)")), ToolInput(tag="in_single", input_type=Boolean(optional=True), prefix="--single", doc=InputDocumentation(doc="combine multi-fasta sequences into single genome")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no-plot", doc=InputDocumentation(doc="do not generate plots, print GC Skew to stdout")), ToolInput(tag="in_var_6", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gc_Skew_V0_1_0().translate("wdl", allow_empty_container=True)


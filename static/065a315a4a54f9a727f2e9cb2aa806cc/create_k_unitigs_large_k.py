from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float, String

Create_K_Unitigs_Large_K_V0_1_0 = CommandToolBuilder(tool="create_k_unitigs_large_k", base_command=["create_k_unitigs_large_k"], inputs=[ToolInput(tag="in_mer", input_type=Int(optional=True), prefix="--mer", doc=InputDocumentation(doc="*k-mer size")), ToolInput(tag="in_nb_mers", input_type=Int(optional=True), prefix="--nb-mers", doc=InputDocumentation(doc="*Estimated number of distinct k-mers")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Ouput file (stdout)")), ToolInput(tag="in_quality_threshold", input_type=Int(optional=True), prefix="--quality-threshold", doc=InputDocumentation(doc="Count threshold for high-quality mers (2)")), ToolInput(tag="in_cont_on_low", input_type=Int(optional=True), prefix="--cont-on-low", doc=InputDocumentation(doc="Max length of low quality mer run (0)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum length of k-unitig to output (k+1)")), ToolInput(tag="in_gzip", input_type=File(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Gzip output file. Ignored if -o not given. (false)")), ToolInput(tag="in_false_positive", input_type=Float(optional=True), prefix="--false-positive", doc=InputDocumentation(doc="False positive rate in bloom filter (0.01)")), ToolInput(tag="in_load", input_type=File(optional=True), prefix="--load", doc=InputDocumentation(doc="Load jellyfish bloom counter")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_gzip", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gzip", type_hint=File()), doc=OutputDocumentation(doc="Gzip output file. Ignored if -o not given. (false)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_K_Unitigs_Large_K_V0_1_0().translate("wdl", allow_empty_container=True)

